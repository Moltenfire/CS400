Normalised(
THEORY MagicNumberX IS
  MagicNumber(Refinement(Buffer_w_r))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Refinement(Buffer_w_r))==(Machine(Buffer_w));
  Level(Refinement(Buffer_w_r))==(1);
  Upper_Level(Refinement(Buffer_w_r))==(Machine(Buffer_w))
END
&
THEORY LoadedStructureX IS
  Refinement(Buffer_w_r)
END
&
THEORY ListSeesX IS
  List_Sees(Refinement(Buffer_w_r))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Refinement(Buffer_w_r))==(Buffer);
  List_Includes(Refinement(Buffer_w_r))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Refinement(Buffer_w_r))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Refinement(Buffer_w_r))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Refinement(Buffer_w_r))==(?);
  Context_List_Variables(Refinement(Buffer_w_r))==(?);
  Abstract_List_Variables(Refinement(Buffer_w_r))==(buff);
  Local_List_Variables(Refinement(Buffer_w_r))==(num,pos,aa);
  List_Variables(Refinement(Buffer_w_r))==(num,pos,aa);
  External_List_Variables(Refinement(Buffer_w_r))==(num,pos,aa)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Refinement(Buffer_w_r))==(?);
  Abstract_List_VisibleVariables(Refinement(Buffer_w_r))==(?);
  External_List_VisibleVariables(Refinement(Buffer_w_r))==(?);
  Expanded_List_VisibleVariables(Refinement(Buffer_w_r))==(?);
  List_VisibleVariables(Refinement(Buffer_w_r))==(?);
  Internal_List_VisibleVariables(Refinement(Buffer_w_r))==(?)
END
&
THEORY ListOfNewVariablesX IS
  List_Of_New_Variables(Refinement(Buffer_w_r))==(num,pos,aa)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Refinement(Buffer_w_r))==(btrue);
  Expanded_List_Invariant(Refinement(Buffer_w_r))==(btrue);
  Abstract_List_Invariant(Refinement(Buffer_w_r))==(buff: seq(ELEM) & size(buff)<=qlen);
  Context_List_Invariant(Refinement(Buffer_w_r))==(btrue);
  List_Invariant(Refinement(Buffer_w_r))==(aa: 1..qlen --> ELEM & pos: NAT1 & pos<=qlen & num: NAT & num<=qlen & num = size(buff) & aa\|/pos-1^(aa/|\pos-1)/|\num = buff)
END
&
THEORY ListVariantX IS
  List_Variant(Refinement(Buffer_w_r))==(btrue)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Refinement(Buffer_w_r))==(btrue);
  Abstract_List_Assertions(Refinement(Buffer_w_r))==(btrue);
  Context_List_Assertions(Refinement(Buffer_w_r))==(btrue);
  List_Assertions(Refinement(Buffer_w_r))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Refinement(Buffer_w_r))==(@(aa$0).(aa$0: 1..qlen --> ELEM ==> aa:=aa$0);pos:=1;num:=0);
  Context_List_Initialisation(Refinement(Buffer_w_r))==(skip);
  List_Initialisation(Refinement(Buffer_w_r))==(aa:: 1..qlen --> ELEM;pos:=1;num:=0)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Refinement(Buffer_w_r))==(wrap_add,wrap_remove,emptyquery,fullquery,contentsquery);
  List_Operations(Refinement(Buffer_w_r))==(wrap_add,wrap_remove,emptyquery,fullquery,contentsquery)
END
&
THEORY ListInputX IS
  List_Input(Refinement(Buffer_w_r),wrap_add)==(xx);
  List_Input(Refinement(Buffer_w_r),wrap_remove)==(?);
  List_Input(Refinement(Buffer_w_r),emptyquery)==(?);
  List_Input(Refinement(Buffer_w_r),fullquery)==(?);
  List_Input(Refinement(Buffer_w_r),contentsquery)==(?)
END
&
THEORY ListOutputX IS
  List_Output(Refinement(Buffer_w_r),wrap_add)==(rr);
  List_Output(Refinement(Buffer_w_r),wrap_remove)==(rr,ee);
  List_Output(Refinement(Buffer_w_r),emptyquery)==(rr);
  List_Output(Refinement(Buffer_w_r),fullquery)==(rr);
  List_Output(Refinement(Buffer_w_r),contentsquery)==(oo)
END
&
THEORY ListHeaderX IS
  List_Header(Refinement(Buffer_w_r),wrap_add)==(rr <-- wrap_add(xx));
  List_Header(Refinement(Buffer_w_r),wrap_remove)==(rr,ee <-- wrap_remove);
  List_Header(Refinement(Buffer_w_r),emptyquery)==(rr <-- emptyquery);
  List_Header(Refinement(Buffer_w_r),fullquery)==(rr <-- fullquery);
  List_Header(Refinement(Buffer_w_r),contentsquery)==(oo <-- contentsquery)
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  Own_Precondition(Refinement(Buffer_w_r),wrap_add)==(btrue);
  List_Precondition(Refinement(Buffer_w_r),wrap_add)==(xx: ELEM);
  Own_Precondition(Refinement(Buffer_w_r),wrap_remove)==(btrue);
  List_Precondition(Refinement(Buffer_w_r),wrap_remove)==(btrue);
  Own_Precondition(Refinement(Buffer_w_r),emptyquery)==(btrue);
  List_Precondition(Refinement(Buffer_w_r),emptyquery)==(btrue);
  Own_Precondition(Refinement(Buffer_w_r),fullquery)==(btrue);
  List_Precondition(Refinement(Buffer_w_r),fullquery)==(btrue);
  Own_Precondition(Refinement(Buffer_w_r),contentsquery)==(btrue);
  List_Precondition(Refinement(Buffer_w_r),contentsquery)==(btrue)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Refinement(Buffer_w_r),contentsquery)==(btrue | oo:=num);
  Expanded_List_Substitution(Refinement(Buffer_w_r),fullquery)==(btrue | num = qlen ==> rr:=yes [] not(num = qlen) ==> rr:=no);
  Expanded_List_Substitution(Refinement(Buffer_w_r),emptyquery)==(btrue | num = 0 ==> rr:=yes [] not(num = 0) ==> rr:=no);
  Expanded_List_Substitution(Refinement(Buffer_w_r),wrap_remove)==(btrue | num>0 ==> (ee:=aa(pos);num:=num-1;pos:=pos mod qlen+1;rr:=ok) [] not(num>0) ==> rr:=empty);
  Expanded_List_Substitution(Refinement(Buffer_w_r),wrap_add)==(xx: ELEM | num>qlen ==> (aa:=aa<+{(pos+num-1) mod qlen+1|->xx};num:=num+1;rr:=ok) [] not(num>qlen) ==> rr:=full);
  List_Substitution(Refinement(Buffer_w_r),wrap_add)==(IF num>qlen THEN aa((pos+num-1) mod qlen+1):=xx;num:=num+1;rr:=ok ELSE rr:=full END);
  List_Substitution(Refinement(Buffer_w_r),wrap_remove)==(IF num>0 THEN ee:=aa(pos);num:=num-1;pos:=pos mod qlen+1;rr:=ok ELSE rr:=empty END);
  List_Substitution(Refinement(Buffer_w_r),emptyquery)==(IF num = 0 THEN rr:=yes ELSE rr:=no END);
  List_Substitution(Refinement(Buffer_w_r),fullquery)==(IF num = qlen THEN rr:=yes ELSE rr:=no END);
  List_Substitution(Refinement(Buffer_w_r),contentsquery)==(oo:=num)
END
&
THEORY ListParametersX IS
  List_Parameters(Refinement(Buffer_w_r))==(qlen,ELEM)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Constraints(Refinement(Buffer_w_r))==(qlen: NAT1 & ELEM: FIN(INTEGER) & not(ELEM = {}));
  List_Context_Constraints(Refinement(Buffer_w_r))==(btrue)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Refinement(Buffer_w_r))==(?);
  Inherited_List_Constants(Refinement(Buffer_w_r))==(?);
  List_Constants(Refinement(Buffer_w_r))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Refinement(Buffer_w_r),RESP)==({yes,no});
  Context_List_Enumerated(Refinement(Buffer_w_r))==(?);
  Context_List_Defered(Refinement(Buffer_w_r))==(?);
  Context_List_Sets(Refinement(Buffer_w_r))==(?);
  List_Valuable_Sets(Refinement(Buffer_w_r))==(?);
  Inherited_List_Enumerated(Refinement(Buffer_w_r))==(ERRORS,RESP);
  Inherited_List_Defered(Refinement(Buffer_w_r))==(?);
  Inherited_List_Sets(Refinement(Buffer_w_r))==(RESP,ERRORS);
  List_Enumerated(Refinement(Buffer_w_r))==(?);
  List_Defered(Refinement(Buffer_w_r))==(?);
  List_Sets(Refinement(Buffer_w_r))==(?);
  Set_Definition(Refinement(Buffer_w_r),ERRORS)==({ok,full,empty})
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Refinement(Buffer_w_r))==(?);
  Expanded_List_HiddenConstants(Refinement(Buffer_w_r))==(?);
  List_HiddenConstants(Refinement(Buffer_w_r))==(?);
  External_List_HiddenConstants(Refinement(Buffer_w_r))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Refinement(Buffer_w_r))==(ERRORS: FIN(INTEGER) & not(ERRORS = {}) & RESP: FIN(INTEGER) & not(RESP = {}));
  Context_List_Properties(Refinement(Buffer_w_r))==(btrue);
  Inherited_List_Properties(Refinement(Buffer_w_r))==(btrue);
  List_Properties(Refinement(Buffer_w_r))==(btrue)
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Refinement(Buffer_w_r),wrap_add)==(?);
  List_ANY_Var(Refinement(Buffer_w_r),wrap_remove)==(?);
  List_ANY_Var(Refinement(Buffer_w_r),emptyquery)==(?);
  List_ANY_Var(Refinement(Buffer_w_r),fullquery)==(?);
  List_ANY_Var(Refinement(Buffer_w_r),contentsquery)==(?);
  List_ANY_Var(Refinement(Buffer_w_r),?)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Refinement(Buffer_w_r)) == (? | ? | num,pos,aa | ? | wrap_add,wrap_remove,emptyquery,fullquery,contentsquery | ? | ? | qlen,ELEM | Buffer_w_r);
  List_Of_HiddenCst_Ids(Refinement(Buffer_w_r)) == (? | ?);
  List_Of_VisibleCst_Ids(Refinement(Buffer_w_r)) == (?);
  List_Of_VisibleVar_Ids(Refinement(Buffer_w_r)) == (? | ?);
  List_Of_Ids_SeenBNU(Refinement(Buffer_w_r)) == (?: ?)
END
&
THEORY ParametersEnvX IS
  Parameters(Refinement(Buffer_w_r)) == (Type(ELEM) == Prm(SetOf(atype(ELEM,?,?)));Type(qlen) == Prm(btype(INTEGER,?,?)))
END
&
THEORY SetsEnvX IS
  Sets(Refinement(Buffer_w_r)) == (Type(ERRORS) == Cst(SetOf(etype(ERRORS,0,2)));Type(RESP) == Cst(SetOf(etype(RESP,0,1))))
END
&
THEORY ConstantsEnvX IS
  Constants(Refinement(Buffer_w_r)) == (Type(empty) == Cst(etype(ERRORS,0,2));Type(full) == Cst(etype(ERRORS,0,2));Type(ok) == Cst(etype(ERRORS,0,2));Type(yes) == Cst(etype(RESP,0,1));Type(no) == Cst(etype(RESP,0,1)))
END
&
THEORY VariablesEnvX IS
  Variables(Refinement(Buffer_w_r)) == (Type(num) == Mvl(btype(INTEGER,?,?));Type(pos) == Mvl(btype(INTEGER,?,?));Type(aa) == Mvl(SetOf(btype(INTEGER,1,qlen)*atype(ELEM,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Refinement(Buffer_w_r)) == (Type(contentsquery) == Cst(btype(INTEGER,?,?),No_type);Type(fullquery) == Cst(etype(RESP,?,?),No_type);Type(emptyquery) == Cst(etype(RESP,?,?),No_type);Type(wrap_remove) == Cst(etype(ERRORS,?,?)*atype(ELEM,?,?),No_type);Type(wrap_add) == Cst(etype(ERRORS,?,?),atype(ELEM,?,?)))
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
