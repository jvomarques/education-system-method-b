/* WARNING if type checker is not performed, translation could contain errors ! */

#include "Academico.h"
#include <criterion/criterion.h>
#include<stdio.h>

/* Clause CONCRETE_CONSTANTS */
/* Basic constants */

/* Array and record constants */
/* Clause CONCRETE_VARIABLES */

static int32_t Academico__student_i[21];
static int32_t Academico__teacher_i[21];
static int32_t Academico__student_list_course_i[21][21];
static int32_t Academico__course_subject_list_i[21][21];
static int32_t Academico__test_list_i[21][21];
static int32_t Academico__student_grade_sum_i[21];
static int32_t Academico__student_grade_num_i[21];
static int32_t Academico__grade_list_student_subject_i[21][21];
/* Clause INITIALISATION */
void Academico__INITIALISATION(void)
{
    
    unsigned int i = 0, j= 0;
    for(i = 0; i <= 20;i++)
    {
        Academico__student_i[i] = 0;
    }
    for(i = 0; i <= 20;i++)
    {
        Academico__teacher_i[i] = 0;
    }
    for(i = 0; i <= 20;i++)
    {
        for(j = 0; j <= 20;j++)
        {
            Academico__course_subject_list_i[i][j] = 0;
        }
    }
    for(i = 0; i <= 20;i++)
    {
        for(j = 0; j <= 20;j++)
        {
            Academico__student_list_course_i[i][j] = 0;
        }
    }
    for(i = 0; i <= 20;i++)
    {
        for(j = 0; j <= 20;j++)
        {
            Academico__test_list_i[i][j] = 0;
        }
    }
    for(i = 0; i <= 20;i++)
    {
        Academico__student_grade_sum_i[i] = 0;
    }
    for(i = 0; i <= 20;i++)
    {
        Academico__student_grade_num_i[i] = 0;
    }
    for(i = 0; i <= 20;i++)
    {
        for(j = 0; j <= 20;j++)
        {
            Academico__grade_list_student_subject_i[i][j] = 0;
        }
    }
}

/* Clause OPERATIONS */

void Academico__addStudent(Academico__PERSON ss)
{
    Academico__student_i[ss] = 1;
}

void Academico__addTeacher(Academico__PERSON tt)
{
    Academico__teacher_i[tt] = 1;
}

void Academico__addSubjectToCourse(Academico__SUBJECT ss, Academico__COURSE cc)
{
    Academico__course_subject_list_i[ss][cc] = 1;
}

void Academico__registerStudent(Academico__PERSON ss, Academico__COURSE cc)
{
    Academico__student_list_course_i[ss][cc] = 1;
}

void Academico__doTest(Academico__PERSON ss, Academico__SUBJECT ss2)
{
    int canDo = 0;
    for(int i = 0; i < 21; i ++){
        if(Academico__student_list_course_i[ss][i] == 1){
            if(Academico__course_subject_list_i[ss2][i] == 1)
                canDo = 1;
        }
    }

    printf("canDo: %i\n", canDo);
    if(canDo > 0)
        Academico__test_list_i[ss][ss2] = 1;
    else 
        cr_assert_geq(canDo, 1, "The student should has register in a course or the student dosen't have access to this subject");

}

void Academico__registerGrade(Academico__PERSON ss, Academico__SUBJECT ss2, int32_t gg)
{
    if (gg > 10) {
        cr_assert_leq(gg, 10, "input gg is greater than 10");
        return;
    }
    else if(gg < 0){
        cr_assert_geq(gg, 0, "input gg is lower than 0");
        return;
    }

    Academico__grade_list_student_subject_i[ss][ss2] = gg;
    Academico__student_grade_sum_i[ss] = Academico__student_grade_sum_i[ss]+gg;
    Academico__student_grade_num_i[ss] = Academico__student_grade_num_i[ss]+1;
}

void Academico__getIRA(Academico__PERSON ss, int32_t *ira)
{
    (*ira) = Academico__student_grade_sum_i[ss] / Academico__student_grade_num_i[ss];
}

void Academico__isApproved(Academico__PERSON ss, Academico__SUBJECT ss2, Academico__STATUS *status)
{
    {
        int32_t avg;
        
        avg = Academico__grade_list_student_subject_i[ss][ss2];
        if((avg) > (5))
        {
            (*status) = Academico__Approved;
        }
        else
        {
            (*status) = Academico__Failed;
        }
    }
}

Test(academicoCaixaBranca, isGradeGreaterThanZeroAndLowerThanTen) {
    // Academico__registerGrade(1, 2, 11);
    // Academico__registerGrade(1, 2, -1);
    // Academico__registerGrade(1, 2, 7);
}

Test(academicoCaixaBranca, canStudentDoTest){
    // Academico__student_list_course_i[1][1] = 1;
    // Academico__doTest(1,2);
}

Test(academicoCaixaPreta, getIRA){
    int course1 = 1;

    int subject1 = 1;
    int subject2 = 2;
    int subject3 = 3;

    int student1 = 1;
    int student2 = 2;

    int32_t ira;

    Academico__addSubjectToCourse(subject1, course1);
    Academico__addSubjectToCourse(subject2, course1);
    Academico__addSubjectToCourse(subject3, course1);

    Academico__registerStudent(student1, course1);

    Academico__doTest(student1, subject1);
    Academico__doTest(student1, subject2);
    Academico__doTest(student1, subject3);

    Academico__registerGrade(student1, subject1, 4);
    Academico__registerGrade(student1, subject2, 6);
    Academico__registerGrade(student1, subject3, 5);
    
    Academico__getIRA(student1, &ira);

    int expected_value = 4;
    int received_value = (int) ira; 
    cr_assert_eq(expected_value, received_value, "IRA(%d): Expected %d, Received %d)", student1, expected_value, received_value);
}

// Test(academicoCaixaPreta, isApproved){
//     int course1 = 1;
//     int subject1 = 1;
//     int subject2 = 2;
//     int student1 = 1;
//     int student2 = 1;
//     Academico__STATUS status;

//     Academico__addSubjectToCourse(subject1, course1);
//     Academico__registerStudent(student1, course1);
//     Academico__doTest(student1, subject1);
//     Academico__registerGrade(student1, subject1, 2);
//     Academico__isApproved(student1, subject1, &status);

//     int expected_value = (int) Academico__Approved; 
//     int received_value = (int) status; 
//     cr_assert_eq(expected_value, received_value);
// }
