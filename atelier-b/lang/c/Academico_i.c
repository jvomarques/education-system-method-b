/* WARNING if type checker is not performed, translation could contain errors ! */

#include "Academico.h"

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
    Academico__test_list_i[ss][ss2] = 1;
}

void Academico__registerGrade(Academico__PERSON ss, Academico__SUBJECT ss2, int32_t gg)
{
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

