#ifndef _Academico_h
#define _Academico_h

#include <stdint.h>
#include <stdbool.h>
#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */


#define Academico__PERSON__max 20
#define Academico__COURSE__max 20
#define Academico__SUBJECT__max 20
#define Academico__Bool__max 1
#define Academico__GRADE__max 10
#define Academico__GRADE_SUM__max 100
#define Academico__GRADE_NUM__max 100
/* Clause SETS */
typedef int Academico__PERSON;
typedef enum
{
    Academico__Approved,
    Academico__Failed
    
} Academico__STATUS;
typedef int Academico__COURSE;
typedef int Academico__SUBJECT;
typedef int Academico__Bool;
typedef int Academico__GRADE;
typedef int Academico__GRADE_SUM;
typedef int Academico__GRADE_NUM;

/* Clause CONCRETE_VARIABLES */


/* Clause CONCRETE_CONSTANTS */
/* Basic constants */
/* Array and record constants */
extern void Academico__INITIALISATION(void);

/* Clause OPERATIONS */

extern void Academico__addStudent(Academico__PERSON ss);
extern void Academico__addTeacher(Academico__PERSON tt);
extern void Academico__addSubjectToCourse(Academico__SUBJECT ss, Academico__COURSE cc);
extern void Academico__registerStudent(Academico__PERSON ss, Academico__COURSE cc);
extern void Academico__doTest(Academico__PERSON ss, Academico__SUBJECT ss2);
extern void Academico__registerGrade(Academico__PERSON ss, Academico__SUBJECT ss2, int32_t gg);
extern void Academico__getIRA(Academico__PERSON ss, int32_t *ira);
extern void Academico__isApproved(Academico__PERSON ss, Academico__SUBJECT ss2, Academico__STATUS *status);

#ifdef __cplusplus
}
#endif /* __cplusplus */


#endif /* _Academico_h */
