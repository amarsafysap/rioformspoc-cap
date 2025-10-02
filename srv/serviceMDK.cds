using { RioForms as my } from '../db/schema.cds';

@path : '/service/RioFormsServiceMDK'
service RioFormsServiceMDK
{
    @cds.redirection.target
    entity Form as
        projection on my.Form;

    @cds.redirection.target
    entity Questions as
        projection on my.Questions;

    @cds.redirection.target
    entity QuestionTypes as
        projection on my.QuestionTypes;

    @cds.redirection.target
    entity FormRecord as
        projection on my.FormRecord;

    @cds.redirection.target
    entity AnswerRecord as
        projection on my.AnswerRecord;
}

annotate RioFormsServiceMDK with @requires :
[
    'authenticated-user'
];
