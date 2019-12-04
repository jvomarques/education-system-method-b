Normalised(
THEORY MagicNumberX IS
  MagicNumber(Machine(Academico))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Machine(Academico))==(Machine(Academico));
  Level(Machine(Academico))==(0)
END
&
THEORY LoadedStructureX IS
  Machine(Academico)
END
&
THEORY ListSeesX IS
  List_Sees(Machine(Academico))==(?)
END
&
THEORY ListUsesX IS
  List_Uses(Machine(Academico))==(?)
END
&
THEORY ListIncludesX IS
  Inherited_List_Includes(Machine(Academico))==(?);
  List_Includes(Machine(Academico))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Machine(Academico))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Machine(Academico))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Machine(Academico))==(?);
  Context_List_Variables(Machine(Academico))==(?);
  Abstract_List_Variables(Machine(Academico))==(?);
  Local_List_Variables(Machine(Academico))==(student_grade_num,grade_list_student_subject,student_grade_sum,test_list,course_subject_list,student_list_course,teacher,student);
  List_Variables(Machine(Academico))==(student_grade_num,grade_list_student_subject,student_grade_sum,test_list,course_subject_list,student_list_course,teacher,student);
  External_List_Variables(Machine(Academico))==(student_grade_num,grade_list_student_subject,student_grade_sum,test_list,course_subject_list,student_list_course,teacher,student)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Machine(Academico))==(?);
  Abstract_List_VisibleVariables(Machine(Academico))==(?);
  External_List_VisibleVariables(Machine(Academico))==(?);
  Expanded_List_VisibleVariables(Machine(Academico))==(?);
  List_VisibleVariables(Machine(Academico))==(?);
  Internal_List_VisibleVariables(Machine(Academico))==(?)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Machine(Academico))==(btrue);
  Gluing_List_Invariant(Machine(Academico))==(btrue);
  Expanded_List_Invariant(Machine(Academico))==(btrue);
  Abstract_List_Invariant(Machine(Academico))==(btrue);
  Context_List_Invariant(Machine(Academico))==(btrue);
  List_Invariant(Machine(Academico))==(student <: PERSON & teacher <: PERSON & student/\teacher = {} & course_subject_list: COURSE <-> SUBJECT & student_list_course: PERSON <-> COURSE & test_list: PERSON <-> SUBJECT & grade_list_student_subject: PERSON*SUBJECT +-> NATURAL & student_grade_sum: PERSON +-> NATURAL & student_grade_num: PERSON +-> NATURAL)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Machine(Academico))==(btrue);
  Abstract_List_Assertions(Machine(Academico))==(btrue);
  Context_List_Assertions(Machine(Academico))==(btrue);
  List_Assertions(Machine(Academico))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Machine(Academico))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Machine(Academico))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Machine(Academico))==(student,teacher,student_list_course,course_subject_list,test_list,student_grade_sum,student_grade_num,grade_list_student_subject:={},{},{},{},{},{},{},{});
  Context_List_Initialisation(Machine(Academico))==(skip);
  List_Initialisation(Machine(Academico))==(student:={} || teacher:={} || student_list_course:={} || course_subject_list:={} || test_list:={} || student_grade_sum:={} || student_grade_num:={} || grade_list_student_subject:={})
END
&
THEORY ListParametersX IS
  List_Parameters(Machine(Academico))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Context_Constraints(Machine(Academico))==(btrue);
  List_Constraints(Machine(Academico))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Machine(Academico))==(addStudent,addTeacher,addSubjectToCourse,registerStudent,doTest,registerGrade,getIRA,isApproved);
  List_Operations(Machine(Academico))==(addStudent,addTeacher,addSubjectToCourse,registerStudent,doTest,registerGrade,getIRA,isApproved)
END
&
THEORY ListInputX IS
  List_Input(Machine(Academico),addStudent)==(ss);
  List_Input(Machine(Academico),addTeacher)==(tt);
  List_Input(Machine(Academico),addSubjectToCourse)==(ss,cc);
  List_Input(Machine(Academico),registerStudent)==(ss,cc);
  List_Input(Machine(Academico),doTest)==(ss,ss2);
  List_Input(Machine(Academico),registerGrade)==(ss,ss2,gg);
  List_Input(Machine(Academico),getIRA)==(ss);
  List_Input(Machine(Academico),isApproved)==(ss,ss2)
END
&
THEORY ListOutputX IS
  List_Output(Machine(Academico),addStudent)==(?);
  List_Output(Machine(Academico),addTeacher)==(?);
  List_Output(Machine(Academico),addSubjectToCourse)==(?);
  List_Output(Machine(Academico),registerStudent)==(?);
  List_Output(Machine(Academico),doTest)==(?);
  List_Output(Machine(Academico),registerGrade)==(?);
  List_Output(Machine(Academico),getIRA)==(ira);
  List_Output(Machine(Academico),isApproved)==(status)
END
&
THEORY ListHeaderX IS
  List_Header(Machine(Academico),addStudent)==(addStudent(ss));
  List_Header(Machine(Academico),addTeacher)==(addTeacher(tt));
  List_Header(Machine(Academico),addSubjectToCourse)==(addSubjectToCourse(ss,cc));
  List_Header(Machine(Academico),registerStudent)==(registerStudent(ss,cc));
  List_Header(Machine(Academico),doTest)==(doTest(ss,ss2));
  List_Header(Machine(Academico),registerGrade)==(registerGrade(ss,ss2,gg));
  List_Header(Machine(Academico),getIRA)==(ira <-- getIRA(ss));
  List_Header(Machine(Academico),isApproved)==(status <-- isApproved(ss,ss2))
END
&
THEORY ListOperationGuardX END
&
THEORY ListPreconditionX IS
  List_Precondition(Machine(Academico),addStudent)==(ss: PERSON & ss/:student & ss/:teacher);
  List_Precondition(Machine(Academico),addTeacher)==(tt: PERSON & tt/:student & tt/:teacher);
  List_Precondition(Machine(Academico),addSubjectToCourse)==(ss: SUBJECT & cc: COURSE & ss/:ran(course_subject_list));
  List_Precondition(Machine(Academico),registerStudent)==(ss: PERSON & ss/:teacher & cc: COURSE & ss/:dom(student_list_course) & cc: dom(course_subject_list));
  List_Precondition(Machine(Academico),doTest)==(ss: PERSON & ss: dom(student_list_course) & ss2: SUBJECT & ss2: ran(ran({ss}<|student_list_course)<|course_subject_list));
  List_Precondition(Machine(Academico),registerGrade)==(ss: PERSON & ss/:teacher & ss2: SUBJECT & ss|->ss2: test_list & gg: NAT & ss: dom(student_grade_sum) & ss: dom(student_grade_num) & ss|->ss2/:dom(grade_list_student_subject));
  List_Precondition(Machine(Academico),getIRA)==(grade_list_student_subject/={} & ss: PERSON & ss/:teacher & ss: dom(test_list) & ss: dom(student_grade_sum) & ss: dom(student_grade_num) & student_grade_num(ss)>0);
  List_Precondition(Machine(Academico),isApproved)==(ss: PERSON & ss/:teacher & ss2: SUBJECT & ss|->ss2: test_list)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Machine(Academico),isApproved)==(ss: PERSON & ss/:teacher & ss2: SUBJECT & ss|->ss2: test_list | ran({ss|->ss2}<|grade_list_student_subject) <: 5..10 ==> status:=Approved [] not(ran({ss|->ss2}<|grade_list_student_subject) <: 5..10) ==> status:=Failed);
  Expanded_List_Substitution(Machine(Academico),getIRA)==(grade_list_student_subject/={} & ss: PERSON & ss/:teacher & ss: dom(test_list) & ss: dom(student_grade_sum) & ss: dom(student_grade_num) & student_grade_num(ss)>0 | ira:=student_grade_sum(ss)/student_grade_num(ss));
  Expanded_List_Substitution(Machine(Academico),registerGrade)==(ss: PERSON & ss/:teacher & ss2: SUBJECT & ss|->ss2: test_list & gg: NAT & ss: dom(student_grade_sum) & ss: dom(student_grade_num) & ss|->ss2/:dom(grade_list_student_subject) | grade_list_student_subject,student_grade_sum,student_grade_num:=grade_list_student_subject<+{ss|->ss2|->gg},student_grade_sum<+{ss|->student_grade_sum(ss)+gg},student_grade_num<+{ss|->student_grade_num(ss)+1});
  Expanded_List_Substitution(Machine(Academico),doTest)==(ss: PERSON & ss: dom(student_list_course) & ss2: SUBJECT & ss2: ran(ran({ss}<|student_list_course)<|course_subject_list) | ss/:dom(student_grade_sum) & ss/:dom(student_grade_num) ==> student_grade_sum,student_grade_num,test_list:=student_grade_sum\/{ss|->0},student_grade_num\/{ss|->0},test_list\/{ss|->ss2} [] not(ss/:dom(student_grade_sum) & ss/:dom(student_grade_num)) ==> test_list:=test_list\/{ss|->ss2});
  Expanded_List_Substitution(Machine(Academico),registerStudent)==(ss: PERSON & ss/:teacher & cc: COURSE & ss/:dom(student_list_course) & cc: dom(course_subject_list) | student_list_course:=student_list_course\/{ss|->cc});
  Expanded_List_Substitution(Machine(Academico),addSubjectToCourse)==(ss: SUBJECT & cc: COURSE & ss/:ran(course_subject_list) | course_subject_list:=course_subject_list\/{cc|->ss});
  Expanded_List_Substitution(Machine(Academico),addTeacher)==(tt: PERSON & tt/:student & tt/:teacher | teacher:=teacher\/{tt});
  Expanded_List_Substitution(Machine(Academico),addStudent)==(ss: PERSON & ss/:student & ss/:teacher | student:=student\/{ss});
  List_Substitution(Machine(Academico),addStudent)==(student:=student\/{ss});
  List_Substitution(Machine(Academico),addTeacher)==(teacher:=teacher\/{tt});
  List_Substitution(Machine(Academico),addSubjectToCourse)==(course_subject_list:=course_subject_list\/{cc|->ss});
  List_Substitution(Machine(Academico),registerStudent)==(student_list_course:=student_list_course\/{ss|->cc});
  List_Substitution(Machine(Academico),doTest)==(IF ss/:dom(student_grade_sum) & ss/:dom(student_grade_num) THEN student_grade_sum:=student_grade_sum\/{ss|->0} || student_grade_num:=student_grade_num\/{ss|->0} || test_list:=test_list\/{ss|->ss2} ELSE test_list:=test_list\/{ss|->ss2} END);
  List_Substitution(Machine(Academico),registerGrade)==(grade_list_student_subject(ss|->ss2):=gg || student_grade_sum(ss):=student_grade_sum(ss)+gg || student_grade_num(ss):=student_grade_num(ss)+1);
  List_Substitution(Machine(Academico),getIRA)==(ira:=student_grade_sum(ss)/student_grade_num(ss));
  List_Substitution(Machine(Academico),isApproved)==(IF ran({ss|->ss2}<|grade_list_student_subject) <: 5..10 THEN status:=Approved ELSE status:=Failed END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Machine(Academico))==(?);
  Inherited_List_Constants(Machine(Academico))==(?);
  List_Constants(Machine(Academico))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Machine(Academico),PERSON)==(?);
  Context_List_Enumerated(Machine(Academico))==(?);
  Context_List_Defered(Machine(Academico))==(?);
  Context_List_Sets(Machine(Academico))==(?);
  List_Valuable_Sets(Machine(Academico))==(PERSON,COURSE,SUBJECT,Bool,GRADE,GRADE_SUM,GRADE_NUM);
  Inherited_List_Enumerated(Machine(Academico))==(?);
  Inherited_List_Defered(Machine(Academico))==(?);
  Inherited_List_Sets(Machine(Academico))==(?);
  List_Enumerated(Machine(Academico))==(STATUS);
  List_Defered(Machine(Academico))==(PERSON,COURSE,SUBJECT,Bool,GRADE,GRADE_SUM,GRADE_NUM);
  List_Sets(Machine(Academico))==(PERSON,STATUS,COURSE,SUBJECT,Bool,GRADE,GRADE_SUM,GRADE_NUM);
  Set_Definition(Machine(Academico),STATUS)==({Approved,Failed});
  Set_Definition(Machine(Academico),COURSE)==(?);
  Set_Definition(Machine(Academico),SUBJECT)==(?);
  Set_Definition(Machine(Academico),Bool)==(?);
  Set_Definition(Machine(Academico),GRADE)==(?);
  Set_Definition(Machine(Academico),GRADE_SUM)==(?);
  Set_Definition(Machine(Academico),GRADE_NUM)==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Machine(Academico))==(?);
  Expanded_List_HiddenConstants(Machine(Academico))==(?);
  List_HiddenConstants(Machine(Academico))==(?);
  External_List_HiddenConstants(Machine(Academico))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Machine(Academico))==(btrue);
  Context_List_Properties(Machine(Academico))==(btrue);
  Inherited_List_Properties(Machine(Academico))==(btrue);
  List_Properties(Machine(Academico))==(PERSON: FIN(INTEGER) & not(PERSON = {}) & COURSE: FIN(INTEGER) & not(COURSE = {}) & SUBJECT: FIN(INTEGER) & not(SUBJECT = {}) & Bool: FIN(INTEGER) & not(Bool = {}) & GRADE: FIN(INTEGER) & not(GRADE = {}) & GRADE_SUM: FIN(INTEGER) & not(GRADE_SUM = {}) & GRADE_NUM: FIN(INTEGER) & not(GRADE_NUM = {}) & STATUS: FIN(INTEGER) & not(STATUS = {}))
END
&
THEORY ListSeenInfoX END
&
THEORY ListANYVarX IS
  List_ANY_Var(Machine(Academico),addStudent)==(?);
  List_ANY_Var(Machine(Academico),addTeacher)==(?);
  List_ANY_Var(Machine(Academico),addSubjectToCourse)==(?);
  List_ANY_Var(Machine(Academico),registerStudent)==(?);
  List_ANY_Var(Machine(Academico),doTest)==(?);
  List_ANY_Var(Machine(Academico),registerGrade)==(?);
  List_ANY_Var(Machine(Academico),getIRA)==(?);
  List_ANY_Var(Machine(Academico),isApproved)==(?)
END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Machine(Academico)) == (PERSON,STATUS,COURSE,SUBJECT,Bool,GRADE,GRADE_SUM,GRADE_NUM,Approved,Failed | ? | student_grade_num,grade_list_student_subject,student_grade_sum,test_list,course_subject_list,student_list_course,teacher,student | ? | addStudent,addTeacher,addSubjectToCourse,registerStudent,doTest,registerGrade,getIRA,isApproved | ? | ? | ? | Academico);
  List_Of_HiddenCst_Ids(Machine(Academico)) == (? | ?);
  List_Of_VisibleCst_Ids(Machine(Academico)) == (?);
  List_Of_VisibleVar_Ids(Machine(Academico)) == (? | ?);
  List_Of_Ids_SeenBNU(Machine(Academico)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Machine(Academico)) == (Type(PERSON) == Cst(SetOf(atype(PERSON,"[PERSON","]PERSON")));Type(STATUS) == Cst(SetOf(etype(STATUS,0,1)));Type(COURSE) == Cst(SetOf(atype(COURSE,"[COURSE","]COURSE")));Type(SUBJECT) == Cst(SetOf(atype(SUBJECT,"[SUBJECT","]SUBJECT")));Type(Bool) == Cst(SetOf(atype(Bool,"[Bool","]Bool")));Type(GRADE) == Cst(SetOf(atype(GRADE,"[GRADE","]GRADE")));Type(GRADE_SUM) == Cst(SetOf(atype(GRADE_SUM,"[GRADE_SUM","]GRADE_SUM")));Type(GRADE_NUM) == Cst(SetOf(atype(GRADE_NUM,"[GRADE_NUM","]GRADE_NUM"))))
END
&
THEORY ConstantsEnvX IS
  Constants(Machine(Academico)) == (Type(Approved) == Cst(etype(STATUS,0,1));Type(Failed) == Cst(etype(STATUS,0,1)))
END
&
THEORY VariablesEnvX IS
  Variables(Machine(Academico)) == (Type(student_grade_num) == Mvl(SetOf(atype(PERSON,?,?)*btype(INTEGER,?,?)));Type(grade_list_student_subject) == Mvl(SetOf(atype(PERSON,?,?)*atype(SUBJECT,?,?)*btype(INTEGER,?,?)));Type(student_grade_sum) == Mvl(SetOf(atype(PERSON,?,?)*btype(INTEGER,?,?)));Type(test_list) == Mvl(SetOf(atype(PERSON,?,?)*atype(SUBJECT,?,?)));Type(course_subject_list) == Mvl(SetOf(atype(COURSE,?,?)*atype(SUBJECT,?,?)));Type(student_list_course) == Mvl(SetOf(atype(PERSON,?,?)*atype(COURSE,?,?)));Type(teacher) == Mvl(SetOf(atype(PERSON,?,?)));Type(student) == Mvl(SetOf(atype(PERSON,?,?))))
END
&
THEORY OperationsEnvX IS
  Operations(Machine(Academico)) == (Type(isApproved) == Cst(etype(STATUS,?,?),atype(PERSON,?,?)*atype(SUBJECT,?,?));Type(getIRA) == Cst(btype(INTEGER,?,?),atype(PERSON,?,?));Type(registerGrade) == Cst(No_type,atype(PERSON,?,?)*atype(SUBJECT,?,?)*btype(INTEGER,?,?));Type(doTest) == Cst(No_type,atype(PERSON,?,?)*atype(SUBJECT,?,?));Type(registerStudent) == Cst(No_type,atype(PERSON,?,?)*atype(COURSE,?,?));Type(addSubjectToCourse) == Cst(No_type,atype(SUBJECT,?,?)*atype(COURSE,?,?));Type(addTeacher) == Cst(No_type,atype(PERSON,?,?));Type(addStudent) == Cst(No_type,atype(PERSON,?,?)));
  Observers(Machine(Academico)) == (Type(isApproved) == Cst(etype(STATUS,?,?),atype(PERSON,?,?)*atype(SUBJECT,?,?));Type(getIRA) == Cst(btype(INTEGER,?,?),atype(PERSON,?,?)))
END
&
THEORY TCIntRdX IS
  predB0 == OK;
  extended_sees == KO;
  B0check_tab == KO;
  local_op == OK;
  abstract_constants_visible_in_values == KO;
  project_type == SOFTWARE_TYPE;
  event_b_deadlockfreeness == KO;
  variant_clause_mandatory == KO;
  event_b_coverage == KO;
  event_b_exclusivity == KO;
  genFeasibilityPO == KO
END
)
