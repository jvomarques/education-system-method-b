Normalised(
THEORY MagicNumberX IS
  MagicNumber(Implementation(Academico_i))==(3.5)
END
&
THEORY UpperLevelX IS
  First_Level(Implementation(Academico_i))==(Machine(Academico));
  Level(Implementation(Academico_i))==(1);
  Upper_Level(Implementation(Academico_i))==(Machine(Academico))
END
&
THEORY LoadedStructureX IS
  Implementation(Academico_i)
END
&
THEORY ListSeesX IS
  List_Sees(Implementation(Academico_i))==(?)
END
&
THEORY ListIncludesX IS
  List_Includes(Implementation(Academico_i))==(?);
  Inherited_List_Includes(Implementation(Academico_i))==(?)
END
&
THEORY ListPromotesX IS
  List_Promotes(Implementation(Academico_i))==(?)
END
&
THEORY ListExtendsX IS
  List_Extends(Implementation(Academico_i))==(?)
END
&
THEORY ListVariablesX IS
  External_Context_List_Variables(Implementation(Academico_i))==(?);
  Context_List_Variables(Implementation(Academico_i))==(?);
  Abstract_List_Variables(Implementation(Academico_i))==(student_grade_num,grade_list_student_subject,student_grade_sum,test_list,course_subject_list,student_list_course,teacher,student);
  Local_List_Variables(Implementation(Academico_i))==(?);
  List_Variables(Implementation(Academico_i))==(?);
  External_List_Variables(Implementation(Academico_i))==(?)
END
&
THEORY ListVisibleVariablesX IS
  Inherited_List_VisibleVariables(Implementation(Academico_i))==(?);
  Abstract_List_VisibleVariables(Implementation(Academico_i))==(?);
  External_List_VisibleVariables(Implementation(Academico_i))==(?);
  Expanded_List_VisibleVariables(Implementation(Academico_i))==(?);
  List_VisibleVariables(Implementation(Academico_i))==(grade_list_student_subject_i,student_grade_num_i,student_grade_sum_i,test_list_i,course_subject_list_i,student_list_course_i,teacher_i,student_i);
  Internal_List_VisibleVariables(Implementation(Academico_i))==(grade_list_student_subject_i,student_grade_num_i,student_grade_sum_i,test_list_i,course_subject_list_i,student_list_course_i,teacher_i,student_i)
END
&
THEORY ListInvariantX IS
  Gluing_Seen_List_Invariant(Implementation(Academico_i))==(btrue);
  Expanded_List_Invariant(Implementation(Academico_i))==(btrue);
  Abstract_List_Invariant(Implementation(Academico_i))==(student <: PERSON & teacher <: PERSON & student/\teacher = {} & course_subject_list: COURSE <-> SUBJECT & student_list_course: PERSON <-> COURSE & test_list: PERSON <-> SUBJECT & grade_list_student_subject: PERSON*SUBJECT +-> NATURAL & student_grade_sum: PERSON +-> NATURAL & student_grade_num: PERSON +-> NATURAL);
  Context_List_Invariant(Implementation(Academico_i))==(btrue);
  List_Invariant(Implementation(Academico_i))==(student_i: PERSON --> Bool & teacher_i: PERSON --> Bool & course_subject_list_i: COURSE*SUBJECT --> Bool & student_list_course_i: PERSON*COURSE --> Bool & test_list_i: PERSON*SUBJECT --> Bool & student_grade_sum_i: PERSON --> NAT & student_grade_num_i: PERSON --> NAT & grade_list_student_subject_i: PERSON*SUBJECT --> GRADE & student_i~[{1}] = student & teacher_i~[{1}] = teacher & course_subject_list_i~[{1}] = course_subject_list & student_list_course_i~[{1}] = student_list_course & test_list_i~[{1}] = test_list)
END
&
THEORY ListAssertionsX IS
  Expanded_List_Assertions(Implementation(Academico_i))==(btrue);
  Abstract_List_Assertions(Implementation(Academico_i))==(btrue);
  Context_List_Assertions(Implementation(Academico_i))==(btrue);
  List_Assertions(Implementation(Academico_i))==(btrue)
END
&
THEORY ListCoverageX IS
  List_Coverage(Implementation(Academico_i))==(btrue)
END
&
THEORY ListExclusivityX IS
  List_Exclusivity(Implementation(Academico_i))==(btrue)
END
&
THEORY ListInitialisationX IS
  Expanded_List_Initialisation(Implementation(Academico_i))==(student_i:=PERSON*{0};teacher_i:=PERSON*{0};course_subject_list_i:=COURSE*SUBJECT*{0};student_list_course_i:=PERSON*COURSE*{0};test_list_i:=PERSON*SUBJECT*{0};student_grade_sum_i:=PERSON*{0};student_grade_num_i:=PERSON*{0};grade_list_student_subject_i:=PERSON*SUBJECT*{0});
  Context_List_Initialisation(Implementation(Academico_i))==(skip);
  List_Initialisation(Implementation(Academico_i))==(student_i:=PERSON*{0};teacher_i:=PERSON*{0};course_subject_list_i:=COURSE*SUBJECT*{0};student_list_course_i:=PERSON*COURSE*{0};test_list_i:=PERSON*SUBJECT*{0};student_grade_sum_i:=PERSON*{0};student_grade_num_i:=PERSON*{0};grade_list_student_subject_i:=PERSON*SUBJECT*{0})
END
&
THEORY ListParametersX IS
  List_Parameters(Implementation(Academico_i))==(?)
END
&
THEORY ListInstanciatedParametersX END
&
THEORY ListConstraintsX IS
  List_Constraints(Implementation(Academico_i))==(btrue);
  List_Context_Constraints(Implementation(Academico_i))==(btrue)
END
&
THEORY ListOperationsX IS
  Internal_List_Operations(Implementation(Academico_i))==(addStudent,addTeacher,addSubjectToCourse,registerStudent,doTest,registerGrade,getIRA,isApproved);
  List_Operations(Implementation(Academico_i))==(addStudent,addTeacher,addSubjectToCourse,registerStudent,doTest,registerGrade,getIRA,isApproved)
END
&
THEORY ListInputX IS
  List_Input(Implementation(Academico_i),addStudent)==(ss);
  List_Input(Implementation(Academico_i),addTeacher)==(tt);
  List_Input(Implementation(Academico_i),addSubjectToCourse)==(ss,cc);
  List_Input(Implementation(Academico_i),registerStudent)==(ss,cc);
  List_Input(Implementation(Academico_i),doTest)==(ss,ss2);
  List_Input(Implementation(Academico_i),registerGrade)==(ss,ss2,gg);
  List_Input(Implementation(Academico_i),getIRA)==(ss);
  List_Input(Implementation(Academico_i),isApproved)==(ss,ss2)
END
&
THEORY ListOutputX IS
  List_Output(Implementation(Academico_i),addStudent)==(?);
  List_Output(Implementation(Academico_i),addTeacher)==(?);
  List_Output(Implementation(Academico_i),addSubjectToCourse)==(?);
  List_Output(Implementation(Academico_i),registerStudent)==(?);
  List_Output(Implementation(Academico_i),doTest)==(?);
  List_Output(Implementation(Academico_i),registerGrade)==(?);
  List_Output(Implementation(Academico_i),getIRA)==(ira);
  List_Output(Implementation(Academico_i),isApproved)==(status)
END
&
THEORY ListHeaderX IS
  List_Header(Implementation(Academico_i),addStudent)==(addStudent(ss));
  List_Header(Implementation(Academico_i),addTeacher)==(addTeacher(tt));
  List_Header(Implementation(Academico_i),addSubjectToCourse)==(addSubjectToCourse(ss,cc));
  List_Header(Implementation(Academico_i),registerStudent)==(registerStudent(ss,cc));
  List_Header(Implementation(Academico_i),doTest)==(doTest(ss,ss2));
  List_Header(Implementation(Academico_i),registerGrade)==(registerGrade(ss,ss2,gg));
  List_Header(Implementation(Academico_i),getIRA)==(ira <-- getIRA(ss));
  List_Header(Implementation(Academico_i),isApproved)==(status <-- isApproved(ss,ss2))
END
&
THEORY ListPreconditionX IS
  Own_Precondition(Implementation(Academico_i),addStudent)==(btrue);
  List_Precondition(Implementation(Academico_i),addStudent)==(ss: PERSON & ss/:student & ss/:teacher);
  Own_Precondition(Implementation(Academico_i),addTeacher)==(btrue);
  List_Precondition(Implementation(Academico_i),addTeacher)==(tt: PERSON & tt/:student & tt/:teacher);
  Own_Precondition(Implementation(Academico_i),addSubjectToCourse)==(btrue);
  List_Precondition(Implementation(Academico_i),addSubjectToCourse)==(ss: SUBJECT & cc: COURSE & ss/:ran(course_subject_list));
  Own_Precondition(Implementation(Academico_i),registerStudent)==(btrue);
  List_Precondition(Implementation(Academico_i),registerStudent)==(ss: PERSON & ss/:teacher & cc: COURSE & ss/:dom(student_list_course) & cc: dom(course_subject_list));
  Own_Precondition(Implementation(Academico_i),doTest)==(btrue);
  List_Precondition(Implementation(Academico_i),doTest)==(ss: PERSON & ss: dom(student_list_course) & ss2: SUBJECT & ss2: ran(ran({ss}<|student_list_course)<|course_subject_list));
  Own_Precondition(Implementation(Academico_i),registerGrade)==(btrue);
  List_Precondition(Implementation(Academico_i),registerGrade)==(ss: PERSON & ss/:teacher & ss2: SUBJECT & ss|->ss2: test_list & gg: NAT & ss: dom(student_grade_sum) & ss: dom(student_grade_num) & ss|->ss2/:dom(grade_list_student_subject));
  Own_Precondition(Implementation(Academico_i),getIRA)==(btrue);
  List_Precondition(Implementation(Academico_i),getIRA)==(grade_list_student_subject/={} & ss: PERSON & ss/:teacher & ss: dom(test_list) & ss: dom(student_grade_sum) & ss: dom(student_grade_num) & student_grade_num(ss)>0);
  Own_Precondition(Implementation(Academico_i),isApproved)==(btrue);
  List_Precondition(Implementation(Academico_i),isApproved)==(ss: PERSON & ss/:teacher & ss2: SUBJECT & ss|->ss2: test_list)
END
&
THEORY ListSubstitutionX IS
  Expanded_List_Substitution(Implementation(Academico_i),isApproved)==(ss: PERSON & ss/:teacher & ss2: SUBJECT & ss|->ss2: test_list | @avg.((ss|->ss2: dom(grade_list_student_subject_i) | avg:=grade_list_student_subject_i(ss|->ss2));(avg>5 ==> status:=Approved [] not(avg>5) ==> status:=Failed)));
  Expanded_List_Substitution(Implementation(Academico_i),getIRA)==(grade_list_student_subject/={} & ss: PERSON & ss/:teacher & ss: dom(test_list) & ss: dom(student_grade_sum) & ss: dom(student_grade_num) & student_grade_num(ss)>0 & student_grade_sum_i(ss)/student_grade_num_i(ss): INT & ss: dom(student_grade_sum_i) & ss: dom(student_grade_num_i) & student_grade_sum_i(ss): INT & student_grade_num_i(ss): INT & not(student_grade_num_i(ss) = 0) | ira:=student_grade_sum_i(ss)/student_grade_num_i(ss));
  Expanded_List_Substitution(Implementation(Academico_i),registerGrade)==(ss: PERSON & ss/:teacher & ss2: SUBJECT & ss|->ss2: test_list & gg: NAT & ss: dom(student_grade_sum) & ss: dom(student_grade_num) & ss|->ss2/:dom(grade_list_student_subject) | (ss|->ss2: dom(grade_list_student_subject_i) & gg: INT | grade_list_student_subject_i:=grade_list_student_subject_i<+{ss|->ss2|->gg});(ss: dom(student_grade_sum_i) & student_grade_sum_i(ss)+gg: INT & student_grade_sum_i(ss): INT & gg: INT | student_grade_sum_i:=student_grade_sum_i<+{ss|->student_grade_sum_i(ss)+gg});(ss: dom(student_grade_num_i) & student_grade_num_i(ss)+1: INT & student_grade_num_i(ss): INT & 1: INT | student_grade_num_i:=student_grade_num_i<+{ss|->student_grade_num_i(ss)+1}));
  Expanded_List_Substitution(Implementation(Academico_i),doTest)==(ss: PERSON & ss: dom(student_list_course) & ss2: SUBJECT & ss2: ran(ran({ss}<|student_list_course)<|course_subject_list) & ss|->ss2: dom(test_list_i) & 1: INT | test_list_i:=test_list_i<+{ss|->ss2|->1});
  Expanded_List_Substitution(Implementation(Academico_i),registerStudent)==(ss: PERSON & ss/:teacher & cc: COURSE & ss/:dom(student_list_course) & cc: dom(course_subject_list) & ss|->cc: dom(student_list_course_i) & 1: INT | student_list_course_i:=student_list_course_i<+{ss|->cc|->1});
  Expanded_List_Substitution(Implementation(Academico_i),addSubjectToCourse)==(ss: SUBJECT & cc: COURSE & ss/:ran(course_subject_list) & ss|->cc: dom(course_subject_list_i) & 1: INT | course_subject_list_i:=course_subject_list_i<+{ss|->cc|->1});
  Expanded_List_Substitution(Implementation(Academico_i),addTeacher)==(tt: PERSON & tt/:student & tt/:teacher & tt: dom(teacher_i) & 1: INT | teacher_i:=teacher_i<+{tt|->1});
  Expanded_List_Substitution(Implementation(Academico_i),addStudent)==(ss: PERSON & ss/:student & ss/:teacher & ss: dom(student_i) & 1: INT | student_i:=student_i<+{ss|->1});
  List_Substitution(Implementation(Academico_i),addStudent)==(student_i(ss):=1);
  List_Substitution(Implementation(Academico_i),addTeacher)==(teacher_i(tt):=1);
  List_Substitution(Implementation(Academico_i),addSubjectToCourse)==(course_subject_list_i(ss|->cc):=1);
  List_Substitution(Implementation(Academico_i),registerStudent)==(student_list_course_i(ss|->cc):=1);
  List_Substitution(Implementation(Academico_i),doTest)==(test_list_i(ss|->ss2):=1);
  List_Substitution(Implementation(Academico_i),registerGrade)==(grade_list_student_subject_i(ss|->ss2):=gg;student_grade_sum_i(ss):=student_grade_sum_i(ss)+gg;student_grade_num_i(ss):=student_grade_num_i(ss)+1);
  List_Substitution(Implementation(Academico_i),getIRA)==(ira:=student_grade_sum_i(ss)/student_grade_num_i(ss));
  List_Substitution(Implementation(Academico_i),isApproved)==(VAR avg IN avg:=grade_list_student_subject_i(ss|->ss2);IF avg>5 THEN status:=Approved ELSE status:=Failed END END)
END
&
THEORY ListConstantsX IS
  List_Valuable_Constants(Implementation(Academico_i))==(?);
  Inherited_List_Constants(Implementation(Academico_i))==(?);
  List_Constants(Implementation(Academico_i))==(?)
END
&
THEORY ListSetsX IS
  Set_Definition(Implementation(Academico_i),GRADE_NUM)==(?);
  Context_List_Enumerated(Implementation(Academico_i))==(?);
  Context_List_Defered(Implementation(Academico_i))==(?);
  Context_List_Sets(Implementation(Academico_i))==(?);
  List_Own_Enumerated(Implementation(Academico_i))==(STATUS);
  List_Valuable_Sets(Implementation(Academico_i))==(PERSON,COURSE,SUBJECT,Bool,GRADE,GRADE_SUM,GRADE_NUM);
  Inherited_List_Enumerated(Implementation(Academico_i))==(STATUS);
  Inherited_List_Defered(Implementation(Academico_i))==(PERSON,COURSE,SUBJECT,Bool,GRADE,GRADE_SUM,GRADE_NUM);
  Inherited_List_Sets(Implementation(Academico_i))==(PERSON,STATUS,COURSE,SUBJECT,Bool,GRADE,GRADE_SUM,GRADE_NUM);
  List_Enumerated(Implementation(Academico_i))==(?);
  List_Defered(Implementation(Academico_i))==(?);
  List_Sets(Implementation(Academico_i))==(?);
  Set_Definition(Implementation(Academico_i),GRADE_SUM)==(?);
  Set_Definition(Implementation(Academico_i),GRADE)==(?);
  Set_Definition(Implementation(Academico_i),Bool)==(?);
  Set_Definition(Implementation(Academico_i),SUBJECT)==(?);
  Set_Definition(Implementation(Academico_i),COURSE)==(?);
  Set_Definition(Implementation(Academico_i),STATUS)==({Approved,Failed});
  Set_Definition(Implementation(Academico_i),PERSON)==(?)
END
&
THEORY ListHiddenConstantsX IS
  Abstract_List_HiddenConstants(Implementation(Academico_i))==(?);
  Expanded_List_HiddenConstants(Implementation(Academico_i))==(?);
  List_HiddenConstants(Implementation(Academico_i))==(?);
  External_List_HiddenConstants(Implementation(Academico_i))==(?)
END
&
THEORY ListPropertiesX IS
  Abstract_List_Properties(Implementation(Academico_i))==(PERSON: FIN(INTEGER) & not(PERSON = {}) & COURSE: FIN(INTEGER) & not(COURSE = {}) & SUBJECT: FIN(INTEGER) & not(SUBJECT = {}) & Bool: FIN(INTEGER) & not(Bool = {}) & GRADE: FIN(INTEGER) & not(GRADE = {}) & GRADE_SUM: FIN(INTEGER) & not(GRADE_SUM = {}) & GRADE_NUM: FIN(INTEGER) & not(GRADE_NUM = {}) & STATUS: FIN(INTEGER) & not(STATUS = {}));
  Context_List_Properties(Implementation(Academico_i))==(btrue);
  Inherited_List_Properties(Implementation(Academico_i))==(btrue);
  List_Properties(Implementation(Academico_i))==(btrue)
END
&
THEORY ListValuesX IS
  Precond_Valued_Objects(Implementation(Academico_i))==(btrue);
  Values_Subs(Implementation(Academico_i))==(PERSON,COURSE,SUBJECT,Bool,GRADE,GRADE_SUM,GRADE_NUM: 0..20,0..20,0..20,0..1,0..10,0..100,0..100);
  List_Values(Implementation(Academico_i))==(PERSON = 0..20;COURSE = 0..20;SUBJECT = 0..20;Bool = 0..1;GRADE = 0..10;GRADE_SUM = 0..100;GRADE_NUM = 0..100)
END
&
THEORY ListSeenInfoX END
&
THEORY ListIncludedOperationsX END
&
THEORY InheritedEnvX IS
  VisibleVariables(Implementation(Academico_i))==(Type(student_i) == Mvv(SetOf(btype(INTEGER,"[PERSON","]PERSON")*btype(INTEGER,"[Bool","]Bool")));Type(teacher_i) == Mvv(SetOf(btype(INTEGER,"[PERSON","]PERSON")*btype(INTEGER,"[Bool","]Bool")));Type(student_list_course_i) == Mvv(SetOf(btype(INTEGER,"[PERSON","]PERSON")*btype(INTEGER,"[COURSE","]COURSE")*btype(INTEGER,"[Bool","]Bool")));Type(course_subject_list_i) == Mvv(SetOf(btype(INTEGER,"[COURSE","]COURSE")*btype(INTEGER,"[SUBJECT","]SUBJECT")*btype(INTEGER,"[Bool","]Bool")));Type(test_list_i) == Mvv(SetOf(btype(INTEGER,"[PERSON","]PERSON")*btype(INTEGER,"[SUBJECT","]SUBJECT")*btype(INTEGER,"[Bool","]Bool")));Type(student_grade_sum_i) == Mvv(SetOf(btype(INTEGER,"[PERSON","]PERSON")*btype(INTEGER,0,MAXINT)));Type(student_grade_num_i) == Mvv(SetOf(btype(INTEGER,"[PERSON","]PERSON")*btype(INTEGER,0,MAXINT)));Type(grade_list_student_subject_i) == Mvv(SetOf(btype(INTEGER,"[PERSON","]PERSON")*btype(INTEGER,"[SUBJECT","]SUBJECT")*btype(INTEGER,"[GRADE","]GRADE"))));
  Operations(Implementation(Academico_i))==(Type(isApproved) == Cst(etype(STATUS,?,?),atype(PERSON,?,?)*atype(SUBJECT,?,?));Type(getIRA) == Cst(btype(INTEGER,?,?),atype(PERSON,?,?));Type(registerGrade) == Cst(No_type,atype(PERSON,?,?)*atype(SUBJECT,?,?)*btype(INTEGER,?,?));Type(doTest) == Cst(No_type,atype(PERSON,?,?)*atype(SUBJECT,?,?));Type(registerStudent) == Cst(No_type,atype(PERSON,?,?)*atype(COURSE,?,?));Type(addSubjectToCourse) == Cst(No_type,atype(SUBJECT,?,?)*atype(COURSE,?,?));Type(addTeacher) == Cst(No_type,atype(PERSON,?,?));Type(addStudent) == Cst(No_type,atype(PERSON,?,?)));
  Constants(Implementation(Academico_i))==(Type(Approved) == Cst(etype(STATUS,0,1));Type(Failed) == Cst(etype(STATUS,0,1)))
END
&
THEORY ListVisibleStaticX END
&
THEORY ListOfIdsX IS
  List_Of_Ids(Implementation(Academico_i)) == (? | ? | ? | ? | addStudent,addTeacher,addSubjectToCourse,registerStudent,doTest,registerGrade,getIRA,isApproved | ? | ? | ? | Academico_i);
  List_Of_HiddenCst_Ids(Implementation(Academico_i)) == (? | ?);
  List_Of_VisibleCst_Ids(Implementation(Academico_i)) == (?);
  List_Of_VisibleVar_Ids(Implementation(Academico_i)) == (grade_list_student_subject_i,student_grade_num_i,student_grade_sum_i,test_list_i,course_subject_list_i,student_list_course_i,teacher_i,student_i | ?);
  List_Of_Ids_SeenBNU(Implementation(Academico_i)) == (?: ?)
END
&
THEORY SetsEnvX IS
  Sets(Implementation(Academico_i)) == (Type(GRADE_NUM) == Cst(SetOf(btype(INTEGER,"[GRADE_NUM","]GRADE_NUM")));Type(GRADE_SUM) == Cst(SetOf(btype(INTEGER,"[GRADE_SUM","]GRADE_SUM")));Type(GRADE) == Cst(SetOf(btype(INTEGER,"[GRADE","]GRADE")));Type(Bool) == Cst(SetOf(btype(INTEGER,"[Bool","]Bool")));Type(SUBJECT) == Cst(SetOf(btype(INTEGER,"[SUBJECT","]SUBJECT")));Type(COURSE) == Cst(SetOf(btype(INTEGER,"[COURSE","]COURSE")));Type(STATUS) == Cst(SetOf(etype(STATUS,0,1)));Type(PERSON) == Cst(SetOf(btype(INTEGER,"[PERSON","]PERSON"))))
END
&
THEORY ConstantsEnvX IS
  Constants(Implementation(Academico_i)) == (Type(Failed) == Cst(etype(STATUS,0,1));Type(Approved) == Cst(etype(STATUS,0,1)))
END
&
THEORY VisibleVariablesEnvX IS
  VisibleVariables(Implementation(Academico_i)) == (Type(grade_list_student_subject_i) == Mvv(SetOf(btype(INTEGER,"[PERSON","]PERSON")*btype(INTEGER,"[SUBJECT","]SUBJECT")*btype(INTEGER,"[GRADE","]GRADE")));Type(student_grade_num_i) == Mvv(SetOf(btype(INTEGER,"[PERSON","]PERSON")*btype(INTEGER,0,MAXINT)));Type(student_grade_sum_i) == Mvv(SetOf(btype(INTEGER,"[PERSON","]PERSON")*btype(INTEGER,0,MAXINT)));Type(test_list_i) == Mvv(SetOf(btype(INTEGER,"[PERSON","]PERSON")*btype(INTEGER,"[SUBJECT","]SUBJECT")*btype(INTEGER,"[Bool","]Bool")));Type(course_subject_list_i) == Mvv(SetOf(btype(INTEGER,"[COURSE","]COURSE")*btype(INTEGER,"[SUBJECT","]SUBJECT")*btype(INTEGER,"[Bool","]Bool")));Type(student_list_course_i) == Mvv(SetOf(btype(INTEGER,"[PERSON","]PERSON")*btype(INTEGER,"[COURSE","]COURSE")*btype(INTEGER,"[Bool","]Bool")));Type(teacher_i) == Mvv(SetOf(btype(INTEGER,"[PERSON","]PERSON")*btype(INTEGER,"[Bool","]Bool")));Type(student_i) == Mvv(SetOf(btype(INTEGER,"[PERSON","]PERSON")*btype(INTEGER,"[Bool","]Bool"))))
END
&
THEORY VariablesLocEnvX IS
  Variables_Loc(Implementation(Academico_i),isApproved, 1) == (Type(avg) == Lvl(btype(INTEGER,?,?)))
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
&
THEORY ListLocalOperationsX IS
  List_Local_Operations(Implementation(Academico_i))==(?)
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
  TypingPredicate(Implementation(Academico_i))==(student_i: POW(INTEGER*INTEGER) & teacher_i: POW(INTEGER*INTEGER) & student_list_course_i: POW(INTEGER*INTEGER*INTEGER) & course_subject_list_i: POW(INTEGER*INTEGER*INTEGER) & test_list_i: POW(INTEGER*INTEGER*INTEGER) & student_grade_sum_i: POW(INTEGER*INTEGER) & student_grade_num_i: POW(INTEGER*INTEGER) & grade_list_student_subject_i: POW(INTEGER*INTEGER*INTEGER))
END
&
THEORY ImportedVariablesListX END
&
THEORY ListLocalOpInvariantX END
)
