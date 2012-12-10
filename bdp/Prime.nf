Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Prime))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Prime))==(Machine(Prime));
  Level(Machine(Prime))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Prime)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Prime))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Prime))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Prime))==(?);
  List_Includes(Machine(Prime))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Prime))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Prime))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Prime))==(?);
  Context_List_Variables(Machine(Prime))==(?);
  Abstract_List_Variables(Machine(Prime))==(?);
  Local_List_Variables(Machine(Prime))==(?);
  List_Variables(Machine(Prime))==(?);
  External_List_Variables(Machine(Prime))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Prime))==(?);
  Abstract_List_VisibleVariables(Machine(Prime))==(?);
  External_List_VisibleVariables(Machine(Prime))==(?);
  Expanded_List_VisibleVariables(Machine(Prime))==(?);
  List_VisibleVariables(Machine(Prime))==(?);
  Internal_List_VisibleVariables(Machine(Prime))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Prime))==(btrue);
  Gluing_List_Invariant(Machine(Prime))==(btrue);
  Expanded_List_Invariant(Machine(Prime))==(btrue);
  Abstract_List_Invariant(Machine(Prime))==(btrue);
  Context_List_Invariant(Machine(Prime))==(btrue);
  List_Invariant(Machine(Prime))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Prime))==(btrue);
  Abstract_List_Assertions(Machine(Prime))==(btrue);
  Context_List_Assertions(Machine(Prime))==(btrue);
  List_Assertions(Machine(Prime))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Prime))==(skip);
  Context_List_Initialisation(Machine(Prime))==(skip);
  List_Initialisation(Machine(Prime))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Prime))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Prime))==(btrue);
  List_Constraints(Machine(Prime))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Prime))==(isitprime);
  List_Operations(Machine(Prime))==(isitprime)
END
&
THEORY ListInputX IS
  List_Input(Machine(Prime),isitprime)==(nn)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Prime),isitprime)==(oo)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Prime),isitprime)==(oo <-- isitprime(nn))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Prime),isitprime)==(nn: NAT1)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Prime),isitprime)==(nn: NAT1 | !xx.(xx: NAT => (xx: 2..nn-1 => nn mod xx/=0)) ==> oo:=TRUE [] not(!xx.(xx: NAT => (xx: 2..nn-1 => nn mod xx/=0))) ==> oo:=FALSE);
  List_Substitution(Machine(Prime),isitprime)==(IF !xx.(xx: NAT => (xx: 2..nn-1 => nn mod xx/=0)) THEN oo:=TRUE ELSE oo:=FALSE END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Prime))==(?);
  Inherited_List_Constants(Machine(Prime))==(?);
  List_Constants(Machine(Prime))==(?)
END
&
THEORY ListSetsX IS
  Context_List_Enumerated(Machine(Prime))==(?);
  Context_List_Defered(Machine(Prime))==(?);
  Context_List_Sets(Machine(Prime))==(?);
  List_Valuable_Sets(Machine(Prime))==(?);
  Inherited_List_Enumerated(Machine(Prime))==(?);
  Inherited_List_Defered(Machine(Prime))==(?);
  Inherited_List_Sets(Machine(Prime))==(?);
  List_Enumerated(Machine(Prime))==(?);
  List_Defered(Machine(Prime))==(?);
  List_Sets(Machine(Prime))==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Prime))==(?);
  Expanded_List_HiddenConstants(Machine(Prime))==(?);
  List_HiddenConstants(Machine(Prime))==(?);
  External_List_HiddenConstants(Machine(Prime))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Prime))==(btrue);
  Context_List_Properties(Machine(Prime))==(btrue);
  Inherited_List_Properties(Machine(Prime))==(btrue);
  List_Properties(Machine(Prime))==(btrue)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Prime),isitprime)==(?);
  List_ANY_Var(Machine(Prime),?)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Prime)) == (? | ? | ? | ? | isitprime | ? | ? | ? | Prime);
  List_Of_HiddenCst_Ids(Machine(Prime)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Prime)) == (?);
  List_Of_VisibleVar_Ids(Machine(Prime)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Prime)) == (?: ?)
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Prime)) == (Type(isitprime) == Cst(btype(BOOL,?,?),btype(INTEGER,?,?)));
  Observers(Machine(Prime)) == (Type(isitprime) == Cst(btype(BOOL,?,?),btype(INTEGER,?,?)))
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
)
