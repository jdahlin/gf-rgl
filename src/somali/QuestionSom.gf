concrete QuestionSom of Question = CatSom ** open
  Prelude, ResSom, ParadigmsSom, (VS=VerbSom), (NS=NounSom), (SS=StructuralSom) in {

-- A question can be formed from a clause ('yes-no question') or
-- with an interrogative.

  lin
  -- : Cl -> QCl ;
  QuestCl = cl2qcl True;

  -- : IP -> VP -> QCl ;
  QuestVP ip vp = -- TODO: if we want to contract baa + subj. pronoun, change ResSom.predVP
    let clRaw : ClSlash = predVP ip vp ;
        cl : ClSlash = clRaw ** {
                stm = \\clt,p => case <clt,p> of {
                                    <_,Pos> => "baa" ;
                                    _ => clRaw.stm ! clt ! p }
                }
     in cl2qcl (notB ip.contractSTM) cl ;

  -- : IP -> ClSlash -> QCl ; -- whom does John love
  QuestSlash ip cls =
    let clsIPFocus = cls ** {
          subj = cls.subj ** {  -- place IP first in the sentence,
                    noun = ip.s ! Nom -- keep old subject pronoun.
                 } ;
          obj2 = cls.obj2 ** { -- move old subject noun before object.
                    s = cls.subj.noun ++ cls.obj2.s
                 } ;
          stm : ClType=>Polarity=>Str =
            \\clt,p => case <clt,p> of {
                              <_,Pos> => "baa" ;
                              _ => cls.stm ! clt ! p }
        } ;
     in cl2qclslash (notB ip.contractSTM) clsIPFocus ;


  -- : IAdv -> Cl -> QCl ;    -- why does John walk
  QuestIAdv iadv cls =
    let clRaw : ClSlash = insertIAdv iadv cls ;
        sbj = clRaw.subj ;
        cl : ClSlash = clRaw ** {
            stm = \\clt,p => case <clt,p> of {
                                -- IAdv is focused with baa, and subject comes after
                                <_,Pos> => case iadv.contractSTM of {
                                             True => [] ; _ => "baa"}
                                        ++ sbj.pron ++ sbj.noun ;
                                -- TODO how do negative questions work
                                -- Information questions are not commonly used in negative forms. When they occur they have the same forms as negative declaratives with focus (7.4.1). There is however a strong tendency to use positive forms, for example by subordinating the clause under a verb with an inherently negative meaning:
                                -- Maxaad       u   tegi   weydey?
                                -- what+FOC+you for go:INF failed
                                -- 'Why didn't you go?' (lit. 'Why did you fail to go?')
                                _ => case iadv.contractSTM of {
                                      True => [] ; _ => clRaw.stm ! Question ! p}
                                  ++ sbj.pron ++ sbj.noun } ;
            subj = sbj ** {noun, pron = []}  -- to force subject after baa
        } ;
     in cl2qcl True cl ; -- True because we handle STM placement in cl.stm

  -- : IComp -> NP -> QCl ;   -- where is John?
  -- Saeed p. 212  Ninkii ay raaceen waa ayo? man-the they accompanied DM who
  -- 'The man they travelled with is who?'
  -- QuestIComp icomp np = ;

-- Interrogative pronouns can be formed with interrogative
-- determiners, with or without a noun.

  -- : IDet -> CN -> IP ;       -- which five songs
  IdetCN idet cn = {contractSTM = False} ** NS.DetCN idet cn ;

  -- : IDet       -> IP ;       -- which five
  IdetIP idet = {contractSTM = False} ** NS.DetNP idet ;

-- They can be modified with adverbs.
  -- : IP -> Adv -> IP ;        -- who in Paris
  --AdvIP = NS.AdvNP ;

-- Interrogative quantifiers have number forms and can take number modifiers.

  -- : IQuant -> Num -> IDet ;  -- which (five)
  IdetQuant = NS.DetQuant ;

-- Interrogative adverbs can be formed prepositionally.
  -- : Prep -> IP -> IAdv ;     -- with whom
  PrepIP prep ip = SS.prepIP prep (ip.s ! Abs) False ;

-- They can be modified with other adverbs.

  -- : IAdv -> Adv -> IAdv ;    -- where in Paris
  --  AdvIAdv iadv adv = iadv ** {s = iadv.s ++ adv.berri} ; -- TODO do we need PrepCombination in IAdv?

-- Interrogative complements to copulas can be both adverbs and
-- pronouns.

  -- : IAdv -> IComp ;
  --CompIAdv iadv = iadv ;          -- where (is it)

  -- : IP -> IComp ;
  --CompIP ip = { s = ip.s ! Abs } ;  -- who (is it)

{-
-- More $IP$, $IDet$, and $IAdv$ are defined in $Structural$.

-- Wh questions with two or more question words require a new, special category.

  cat
    QVP ;          -- buy what where
  fun
    ComplSlashIP  : VPSlash -> IP -> QVP ;   -- buys what
    AdvQVP        : VP  ->   IAdv -> QVP ;   -- lives where
    AddAdvQVP     : QVP ->   IAdv -> QVP ;   -- buys what where

    QuestQVP      : IP -> QVP -> QCl ;       -- who buys what where
-}

}
