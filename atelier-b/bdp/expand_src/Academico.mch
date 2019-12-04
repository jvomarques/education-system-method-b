MACHINE
Academico

SETS
    PERSON ;
    STATUS = { Approved , Failed } ;
    COURSE ;
    SUBJECT ;
    Bool ;
    GRADE ;
    GRADE_SUM ;
    GRADE_NUM

ABSTRACT_VARIABLES
    student , teacher , student_list_course , course_subject_list , test_list
    , student_grade_sum
    , grade_list_student_subject
    , student_grade_num

INVARIANT
    student <: PERSON & teacher <: PERSON & student /\ teacher = {} &
    course_subject_list : COURSE <-> SUBJECT &
    student_list_course : PERSON <-> COURSE &
    test_list : PERSON <-> SUBJECT
    & grade_list_student_subject : ( PERSON * SUBJECT ) +-> NATURAL
    & student_grade_sum : PERSON +-> NATURAL
    & student_grade_num : PERSON +-> NATURAL


INITIALISATION
    student := {} || teacher := {} ||
    student_list_course := {} || course_subject_list := {} ||
    test_list := {}
     || student_grade_sum := {}
     || student_grade_num := {}
     || grade_list_student_subject := {}

OPERATIONS

    addStudent ( ss ) =
    PRE ss : PERSON & ss /: student & ss /: teacher
    THEN student := student \/ { ss }
    END ;

    addTeacher ( tt ) =
    PRE tt : PERSON & tt /: student & tt /: teacher
    THEN teacher := teacher \/ { tt }
    END ;

    addSubjectToCourse ( ss , cc ) =
    PRE  ss : SUBJECT & cc : COURSE & ss /: ran ( course_subject_list )
    THEN course_subject_list := course_subject_list \/ { cc |-> ss }
    END ;

    registerStudent ( ss , cc ) =
    PRE  ss : PERSON & ss /: teacher & cc : COURSE & ss /: dom ( student_list_course ) & cc : dom ( course_subject_list )
    THEN student_list_course := student_list_course \/ { ss |-> cc }
    END ;

    doTest ( ss , ss2 ) =
    PRE ss : PERSON &
        ss : dom ( student_list_course ) &
        ss2 : SUBJECT
      &  ss2 : ran ( ran ( { ss } <| student_list_course ) <| course_subject_list )
    THEN
        IF ss /: dom ( student_grade_sum ) & ss /: dom ( student_grade_num )
        THEN
            student_grade_sum := student_grade_sum \/ { ss |-> 0 }
            || student_grade_num := student_grade_num \/ { ss |-> 0 }
            || test_list := test_list \/ { ss |-> ss2 }
        ELSE
        test_list := test_list \/ { ss |-> ss2 }
        END
    END ;

     registerGrade ( ss , ss2 , gg ) =
     PRE ss : PERSON & ss /: teacher & ss2 : SUBJECT & ( ss |-> ss2 ) : test_list & gg : NAT & ss : dom ( student_grade_sum ) & ss : dom ( student_grade_num ) & ss |-> ss2 /: dom ( grade_list_student_subject )
     THEN
         grade_list_student_subject ( ss |-> ss2 ) := gg
         || student_grade_sum ( ss ) := student_grade_sum ( ss ) + gg
         || student_grade_num ( ss ) := student_grade_num ( ss ) + 1
     END ;

         ira <-- getIRA ( ss ) =
         PRE
             grade_list_student_subject /= {} &
             ss : PERSON &
             ss /: teacher &
             ss : dom ( test_list ) &
             ss : dom ( student_grade_sum ) &
             ss : dom ( student_grade_num ) &
             student_grade_num ( ss ) > 0
         THEN ira := student_grade_sum ( ss ) / student_grade_num ( ss )
     END ;

     status <-- isApproved ( ss , ss2 ) =
     PRE ss : PERSON & ss /: teacher & ss2 : SUBJECT & ss |-> ss2 : test_list
     THEN
         IF ran ( { ss |-> ss2 } <| grade_list_student_subject ) <: 5 .. 10
         THEN status := Approved
         ELSE status := Failed
         END
     END




END
