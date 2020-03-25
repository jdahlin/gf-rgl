resource ParadigmsKor = open CatKor, ResKor, ParamKor, NounKor, Prelude in {

oper

--2 Parameters
--
-- To abstract over number, valency and (some) case names,
-- we define the following identifiers. The application programmer
-- should always use these constants instead of the constructors
-- defined in $ResKor$.


--2 Nouns

  mkN : overload {
    mkN : (noun : Str) -> N ; -- Predictable nouns
  } ;

--2 Adjectives

  mkA : overload {
    mkA : (adj : Str) -> A ;
  } ;

  -- mkA2 : Str -> Prep -> A2 ;

--2 Verbs

  -- Verbs
  mkV : overload {
    mkV : (plain : Str) -> V ;    -- Predictable verb: plaininitive form as argument
    mkV : (nore : Str) -> (hada : V) -> V ; -- Add a prefix to an existing verb, e.g. 노래하다
  } ;

  copula : V ; -- The copula verb ''

  mkV2 : overload {
    mkV2 : (plain : Str) -> V2 ; -- Regular verb. Takes -다 form, object particle is 를.
    mkV2 : V -> V2 ; -- Takes pre-constructed V, object particle is 를.
    } ;

  -- mkV3 : overload {
  --   } ;

  -- mkVV : overload {
  --  } ;

  --
  -- mkVA : Str -> VA
  --   = \s -> lin VA (regV s) ;
  -- mkVQ : Str -> VQ
  --   = \s -> lin VQ (regV s) ;
  -- mkVS : Str -> VS
  --   = \s -> lin VS (regV s) ;
  --
  -- mkV2A : Str -> V2A
  --   = \s -> lin V2A (regV s ** {c2 = noPrep}) ;
  -- mkV2V : Str -> V2V
  --   = \s -> lin V2V (regV s ** {c2 = noPrep}) ;
  -- mkV2Q : Str -> V2Q
  --   = \s -> lin V2Q (regV s ** {c2 = noPrep}) ;

  -----

--2 Structural categories

  -- mkPrep = overload {
  --   } ;

  -- mkConj : (_,_ : Str) -> Number -> Conj = \s1,s2,num ->
  --   lin Conj { s = s1 ; s2 = s2 } ;

  -- mkSubj : Str -> Bool -> Subj = \s,b ->
  --   lin Subj { } ;

  mkAdv : Str -> Adv = \s -> lin Adv {s = s} ;

  mkAdV : Str -> AdV = \s -> lin AdV {s = s} ;

  mkAdA : Str -> AdA = \s -> lin AdA {s = s} ;


--.
-------------------------------------------------------------------------------
-- The definitions should not bother the user of the API. So they are
-- hidden from the document.

  mkN = overload {
    mkN : Str -> N                   = \s   -> lin N (mkNoun s) ;
    } ;


  mkN2 = overload {
    mkN2 : Str -> N2 = \s -> lin N2 (mkNoun s) ;
    mkN2 : N   -> N2 = \n -> lin N2 n ;
   } ;

  -- mkPN = overload {
  --   } ;

  mkA = overload {
    mkA : (adj : Str)   -> A = \s -> lin A (mkAdj s) ;
    } ;

  mkV = overload {
    mkV : (plain : Str) -> V = \v -> lin V (mkVerb v Active) ;
    mkV : (nore : Str) -> (hada : V) -> V = \nore,hada -> hada ** {
      s = \\vf => nore + hada.s ! vf} ;
  } ;

  copula = ResKor.copula ;

  -- regV : Str -> Verb = \s -> case s of {
  --   } ;

  mkV2 = overload {
    mkV2 : (plain : Str) -> V2 = \v2 -> lin V2 (mkVerb2 v2) ;
    mkV2 : V -> V2 = vtov2 ;
    } ;

  mkV3 = overload {
    mkV3 : (plain : Str) -> V3 = \v3 -> lin V3 (mkVerb3 v3) ;
    } ;
  --
  -- mkVV = overload {
  --  } ;

--------------------------------------------------------------------------------

}
