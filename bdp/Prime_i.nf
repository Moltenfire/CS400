Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(Prime_i))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(Prime_i))==(Machine(Prime));
  Level(Implementation(Prime_i))==(1);
  Upper_Level(Implementation(Prime_i))==(Machine(Prime))
END
&
THEORY LoadedStructureX IS
  Implementation(Prime_i)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(Prime_i))==(?)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(Prime_i))==(?);
  Inherited_List_Includes(Implementation(Prime_i))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(Prime_i))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(Prime_i))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(Prime_i))==(?);
  Context_List_Variables(Implementation(Prime_i))==(?);
  Abstract_List_Variables(Implementation(Prime_i))==(?);
  Local_List_Variables(Implementation(Prime_i))==(?);
  List_Variables(Implementation(Prime_i))==(?);
  External_List_Variables(Implementation(Prime_i))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(Prime_i))==(?);
  Abstract_List_VisibleVariables(Implementation(Prime_i))==(?);
  External_List_VisibleVariables(Implementation(Prime_i))==(?);
  Expanded_List_VisibleVariables(Implementation(Prime_i))==(?);
  List_VisibleVariables(Implementation(Prime_i))==(?);
  Internal_List_VisibleVariables(Implementation(Prime_i))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(Prime_i))==(btrue);
  Expanded_List_Invariant(Implementation(Prime_i))==(btrue);
  Abstract_List_Invariant(Implementation(Prime_i))==(btrue);
  Context_List_Invariant(Implementation(Prime_i))==(btrue);
  List_Invariant(Implementation(Prime_i))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Implementation(Prime_i))==(btrue);
  Abstract_List_Assertions(Implementation(Prime_i))==(btrue);
  Context_List_Assertions(Implementation(Prime_i))==(btrue);
  List_Assertions(Implementation(Prime_i))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(Prime_i))==(skip);
  Context_List_Initialisation(Implementation(Prime_i))==(skip);
  List_Initialisation(Implementation(Prime_i))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(Prime_i))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(Prime_i))==(btrue);
  List_Context_Constraints(Implementation(Prime_i))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(Prime_i))==(isitprime);
  List_Operations(Implementation(Prime_i))==(isitprime)
END
&
THEORY ListInputX IS
  List_Input(Implementation(Prime_i),isitprime)==(nn)
END
&
THEORY ListOutputX IS
  List_Output(Implementation(Prime_i),isitprime)==(oo)
END
&
THEORY ListHeaderX IS
  List_Header(Implementation(Prime_i),isitprime)==(oo <-- isitprime(nn))
END
&
THEORY ListPreconditionX IS
  Own_Precondition(Implementation(Prime_i),isitprime)==(btrue);
  List_Precondition(Implementation(Prime_i),isitprime)==(nn: NAT1)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Implementation(Prime_i),isitprime)==(nn: NAT1 | @(xx,div,maxval).(xx:=1;div:=1;(nn-1: INT & nn: INT & 1: INT | maxval:=nn-1);WHILE xx/=maxval & xx = div DO (xx+1: INT & xx: INT & 1: INT | xx:=xx+1);(div+nn mod xx: INT & nn mod xx: NAT & nn: NAT & xx: NAT1 & div: INT & nn mod xx: INT | div:=div+nn mod xx) INVARIANT div = SIGMA(yy).(yy: 1..xx | nn mod yy) VARIANT nn-xx END;(div = 1 ==> oo:=TRUE [] not(div = 1) ==> oo:=FALSE)));
  List_Substitution(Implementation(Prime_i),isitprime)==(VAR xx,div,maxval IN xx:=1;div:=1;maxval:=nn-1;WHILE xx/=maxval & xx = div DO xx:=xx+1;div:=div+nn mod xx INVARIANT div = SIGMA(yy).(yy: 1..xx | nn mod yy) VARIANT nn-xx END;IF div = 1 THEN oo:=TRUE ELSE oo:=FALSE END END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Implementation(Prime_i))==(?);
  Inherited_List_Constants(Implementation(Prime_i))==(?);
  List_Constants(Implementation(Prime_i))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Implementation(Prime_i))==(?);
  Context_List_Defered(Implementation(Prime_i))==(?);
  Context_List_Sets(Implementation(Prime_i))==(?);
  List_Own_Enumerated(Implementation(Prime_i))==(?);
  List_Valuable_Sets(Implementation(Prime_i))==(?);
  Inherited_List_Enumerated(Implementation(Prime_i))==(?);
  Inherited_List_Defered(Implementation(Prime_i))==(?);
  Inherited_List_Sets(Implementation(Prime_i))==(?);
  List_Enumerated(Implementation(Prime_i))==(?);
  List_Defered(Implementation(Prime_i))==(?);
  List_Sets(Implementation(Prime_i))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(Prime_i))==(?);
  Expanded_List_HiddenConstants(Implementation(Prime_i))==(?);
  List_HiddenConstants(Implementation(Prime_i))==(?);
  External_List_HiddenConstants(Implementation(Prime_i))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(Prime_i))==(btrue);
  Context_List_Properties(Implementation(Prime_i))==(btrue);
  Inherited_List_Properties(Implementation(Prime_i))==(btrue);
  List_Properties(Implementation(Prime_i))==(btrue)
END
&
THEORY ListValuesX IS
  Values_Subs(Implementation(Prime_i))==(aa: aa);
  List_Values(Implementation(Prime_i))==(?)
END
&
THEORY ListSeenInfoX END
&
THEORY ListIncludedOperationsX END
&
THEORY InheritedEnvX IS
  Operations(Implementation(Prime_i))==(Type(isitprime) == Cst(btype(BOOL,?,?),btype(INTEGER,?,?)))
END
&
THEORY ListVisibleStaticX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(Prime_i)) == (? | ? | ? | ? | isitprime | ? | ? | ? | Prime_i);
  List_Of_HiddenCst_Ids(Implementation(Prime_i)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(Prime_i)) == (?);
  List_Of_VisibleVar_Ids(Implementation(Prime_i)) == (? | ?);
  List_Of_Ids_SeenBNU(Implementation(Prime_i)) == (?: ?)
END
&
THEORY VariablesLocEnvX IS
  Variables_Loc(Implementation(Prime_i),isitprime, 1) == (Type(xx) == Lvl(btype(INTEGER,?,?));Type(div) == Lvl(btype(INTEGER,?,?));Type(maxval) == Lvl(btype(INTEGER,?,?)))
END
&
THEORY TCIntRdX IS
  predB0 == OK;
  extended_sees == KO;
  B0check_tab == KO;
  local_op == OK;
  abstract_constants_visible_in_values == KO;
  event_b_project == KO;
  event_b_deadlockfreeness == KO;
  variant_clause_mandatory == KO
END
&
THEORY ListLocalOperationsX IS
  List_Local_Operations(Implementation(Prime_i))==(?)
END
&
THEORY ListLocalInputX END
&
THEORY ListLocalOutputX END
&
THEORY ListLocalHeaderX END
&
THEORY ListLocalPreconditionX END
&
THEORY ListLocalSubstitutionX END
&
THEORY TypingPredicateX IS
  TypingPredicate(Implementation(Prime_i))==(btrue)
END
&
THEORY ImportedVariablesListX END
&
THEORY ListLocalOpInvariantX END
)
