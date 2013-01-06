Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Buffer_w))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Buffer_w))==(Machine(Buffer_w));
  Level(Machine(Buffer_w))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Buffer_w)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Buffer_w))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Buffer_w))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Buffer_w))==(Buffer);
  List_Includes(Machine(Buffer_w))==(Buffer)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Buffer_w))==(emptyquery,fullquery,contentsquery)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Buffer_w))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Buffer_w))==(?);
  Context_List_Variables(Machine(Buffer_w))==(?);
  Abstract_List_Variables(Machine(Buffer_w))==(?);
  Local_List_Variables(Machine(Buffer_w))==(?);
  List_Variables(Machine(Buffer_w))==(buff);
  External_List_Variables(Machine(Buffer_w))==(buff)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Buffer_w))==(?);
  Abstract_List_VisibleVariables(Machine(Buffer_w))==(?);
  External_List_VisibleVariables(Machine(Buffer_w))==(?);
  Expanded_List_VisibleVariables(Machine(Buffer_w))==(?);
  List_VisibleVariables(Machine(Buffer_w))==(?);
  Internal_List_VisibleVariables(Machine(Buffer_w))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Buffer_w))==(btrue);
  Gluing_List_Invariant(Machine(Buffer_w))==(btrue);
  Abstract_List_Invariant(Machine(Buffer_w))==(btrue);
  Expanded_List_Invariant(Machine(Buffer_w))==(buff: seq(ELEM) & size(buff)<=qlen);
  Context_List_Invariant(Machine(Buffer_w))==(btrue);
  List_Invariant(Machine(Buffer_w))==(btrue)
END
&
THEORY ListAssertionsX IS
  Abstract_List_Assertions(Machine(Buffer_w))==(btrue);
  Expanded_List_Assertions(Machine(Buffer_w))==(btrue);
  Context_List_Assertions(Machine(Buffer_w))==(btrue);
  List_Assertions(Machine(Buffer_w))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Buffer_w))==(buff:=<>);
  Context_List_Initialisation(Machine(Buffer_w))==(skip);
  List_Initialisation(Machine(Buffer_w))==(skip)
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Buffer_w))==(qlen,ELEM)
END
&
THEORY ListInstanciatedParametersX IS
  List_Instanciated_Parameters(Machine(Buffer_w),Machine(Buffer))==(qlen,ELEM)
END
&
THEORY ListConstraintsX IS
  List_Constraints(Machine(Buffer_w),Machine(Buffer))==(qlen: NAT1 & ELEM: FIN(INTEGER) & not(ELEM = {}));
  List_Context_Constraints(Machine(Buffer_w))==(btrue);
  List_Constraints(Machine(Buffer_w))==(qlen: NAT1 & ELEM: FIN(INTEGER) & not(ELEM = {}))
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Buffer_w))==(wrap_add,wrap_remove,emptyquery,fullquery,contentsquery);
  List_Operations(Machine(Buffer_w))==(wrap_add,wrap_remove,emptyquery,fullquery,contentsquery)
END
&
THEORY ListInputX IS
  List_Input(Machine(Buffer_w),contentsquery)==(?);
  List_Input(Machine(Buffer_w),fullquery)==(?);
  List_Input(Machine(Buffer_w),emptyquery)==(?);
  List_Input(Machine(Buffer_w),wrap_add)==(xx);
  List_Input(Machine(Buffer_w),wrap_remove)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Buffer_w),contentsquery)==(oo);
  List_Output(Machine(Buffer_w),fullquery)==(rr);
  List_Output(Machine(Buffer_w),emptyquery)==(rr);
  List_Output(Machine(Buffer_w),wrap_add)==(rr);
  List_Output(Machine(Buffer_w),wrap_remove)==(rr,ee)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Buffer_w),contentsquery)==(oo <-- contentsquery);
  List_Header(Machine(Buffer_w),fullquery)==(rr <-- fullquery);
  List_Header(Machine(Buffer_w),emptyquery)==(rr <-- emptyquery);
  List_Header(Machine(Buffer_w),wrap_add)==(rr <-- wrap_add(xx));
  List_Header(Machine(Buffer_w),wrap_remove)==(rr,ee <-- wrap_remove)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  Own_Precondition(Machine(Buffer_w),contentsquery)==(btrue);
  List_Precondition(Machine(Buffer_w),contentsquery)==(btrue);
  Own_Precondition(Machine(Buffer_w),fullquery)==(btrue);
  List_Precondition(Machine(Buffer_w),fullquery)==(btrue);
  Own_Precondition(Machine(Buffer_w),emptyquery)==(btrue);
  List_Precondition(Machine(Buffer_w),emptyquery)==(btrue);
  List_Precondition(Machine(Buffer_w),wrap_add)==(xx: ELEM);
  List_Precondition(Machine(Buffer_w),wrap_remove)==(btrue)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Buffer_w),wrap_remove)==(btrue | buff/=<> ==> (buff/=<> | rr:=ok || ee,buff:=first(buff),tail(buff)) [] not(buff/=<>) ==> rr:=empty);
  Expanded_List_Substitution(Machine(Buffer_w),wrap_add)==(xx: ELEM | size(buff)<qlen ==> (xx: ELEM & size(buff)<qlen | rr:=ok || buff:=buff<-xx) [] not(size(buff)<qlen) ==> rr:=full);
  List_Substitution(Machine(Buffer_w),contentsquery)==(oo:=size(buff));
  Expanded_List_Substitution(Machine(Buffer_w),contentsquery)==(btrue | oo:=size(buff));
  List_Substitution(Machine(Buffer_w),fullquery)==(IF size(buff) = qlen THEN rr:=yes ELSE rr:=no END);
  Expanded_List_Substitution(Machine(Buffer_w),fullquery)==(btrue | size(buff) = qlen ==> rr:=yes [] not(size(buff) = qlen) ==> rr:=no);
  List_Substitution(Machine(Buffer_w),emptyquery)==(IF buff = <> THEN rr:=yes ELSE rr:=no END);
  Expanded_List_Substitution(Machine(Buffer_w),emptyquery)==(btrue | buff = <> ==> rr:=yes [] not(buff = <>) ==> rr:=no);
  List_Substitution(Machine(Buffer_w),wrap_add)==(IF size(buff)<qlen THEN BEGIN rr:=ok || add(xx) END ELSE rr:=full END);
  List_Substitution(Machine(Buffer_w),wrap_remove)==(IF buff/=<> THEN BEGIN rr:=ok || ee <-- remove END ELSE rr:=empty END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Buffer_w))==(?);
  Inherited_List_Constants(Machine(Buffer_w))==(?);
  List_Constants(Machine(Buffer_w))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Buffer_w),RESP)==({yes,no});
  Context_List_Enumerated(Machine(Buffer_w))==(?);
  Context_List_Defered(Machine(Buffer_w))==(?);
  Context_List_Sets(Machine(Buffer_w))==(?);
  List_Valuable_Sets(Machine(Buffer_w))==(?);
  Inherited_List_Enumerated(Machine(Buffer_w))==(RESP);
  Inherited_List_Defered(Machine(Buffer_w))==(?);
  Inherited_List_Sets(Machine(Buffer_w))==(RESP);
  List_Enumerated(Machine(Buffer_w))==(ERRORS);
  List_Defered(Machine(Buffer_w))==(?);
  List_Sets(Machine(Buffer_w))==(ERRORS);
  Set_Definition(Machine(Buffer_w),ERRORS)==({ok,full,empty})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Buffer_w))==(?);
  Expanded_List_HiddenConstants(Machine(Buffer_w))==(?);
  List_HiddenConstants(Machine(Buffer_w))==(?);
  External_List_HiddenConstants(Machine(Buffer_w))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Buffer_w))==(btrue);
  Context_List_Properties(Machine(Buffer_w))==(btrue);
  Inherited_List_Properties(Machine(Buffer_w))==(RESP: FIN(INTEGER) & not(RESP = {}));
  List_Properties(Machine(Buffer_w))==(ERRORS: FIN(INTEGER) & not(ERRORS = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Buffer_w),wrap_add)==(?);
  List_ANY_Var(Machine(Buffer_w),wrap_remove)==(?);
  List_ANY_Var(Machine(Buffer_w),?)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Buffer_w)) == (ERRORS,ok,full,empty | RESP,yes,no | ? | V,buff | wrap_add,wrap_remove | emptyquery,fullquery,contentsquery | included(Machine(Buffer)) | qlen,ELEM | Buffer_w);
  List_Of_HiddenCst_Ids(Machine(Buffer_w)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Buffer_w)) == (?);
  List_Of_VisibleVar_Ids(Machine(Buffer_w)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Buffer_w)) == (?: ?);
  List_Of_Ids(Machine(Buffer)) == (RESP,yes,no | ? | buff | ? | add,remove,emptyquery,fullquery,contentsquery | ? | ? | qlen,ELEM | Buffer);
  List_Of_HiddenCst_Ids(Machine(Buffer)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Buffer)) == (?);
  List_Of_VisibleVar_Ids(Machine(Buffer)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Buffer)) == (?: ?)
END
&
THEORY ParametersEnvX IS
  Parameters(Machine(Buffer_w)) == (Type(ELEM) == Prm(SetOf(atype(ELEM,?,?)));Type(qlen) == Prm(btype(INTEGER,?,?)))
END
&
THEORY SetsEnvX IS
  Sets(Machine(Buffer_w)) == (Type(RESP) == Cst(SetOf(etype(RESP,0,1)));Type(ERRORS) == Cst(SetOf(etype(ERRORS,0,2))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(Buffer_w)) == (Type(no) == Cst(etype(RESP,0,1));Type(yes) == Cst(etype(RESP,0,1));Type(ok) == Cst(etype(ERRORS,0,2));Type(full) == Cst(etype(ERRORS,0,2));Type(empty) == Cst(etype(ERRORS,0,2)))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Buffer_w)) == (Type(buff) == Mvl(SetOf(btype(INTEGER,?,?)*atype(ELEM,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Buffer_w)) == (Type(emptyquery) == Cst(etype(RESP,?,?),No_type);Type(fullquery) == Cst(etype(RESP,?,?),No_type);Type(contentsquery) == Cst(btype(INTEGER,?,?),No_type);Type(wrap_remove) == Cst(etype(ERRORS,?,?)*atype(ELEM,?,?),No_type);Type(wrap_add) == Cst(etype(ERRORS,?,?),atype(ELEM,?,?)));
  Observers(Machine(Buffer_w)) == (Type(emptyquery) == Cst(etype(RESP,?,?),No_type);Type(fullquery) == Cst(etype(RESP,?,?),No_type);Type(contentsquery) == Cst(btype(INTEGER,?,?),No_type);Type(wrap_remove) == Cst(etype(ERRORS,?,?)*atype(ELEM,?,?),No_type))
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
