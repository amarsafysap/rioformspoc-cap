using { RioForms as my } from '../db/schema.cds';

@path : '/service/RioFormsService'
service RioFormsService
{
    annotate AnswerRecord with @restrict :
    [
        { grant : [ '*' ], to : [ 'any' ] }
    ];

    annotate Form with @restrict :
    [
        { grant : [ '*' ], to : [ 'any' ] }
    ];

    annotate FormRecord with @restrict :
    [
        { grant : [ '*' ], to : [ 'any' ] }
    ];

    @cds.redirection.target
    @odata.draft.enabled
    entity Form as
        projection on my.Form;

    entity Questions as
        projection on my.Questions;

    entity QuestionTypes as
        projection on my.QuestionTypes;

    @cds.redirection.target
    entity FormRecord as
        projection on my.FormRecord;

    entity AnswerRecord as
        projection on my.AnswerRecord;
}
