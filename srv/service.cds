using { RioForms as my } from '../db/schema.cds';

@path : '/service/RioFormsService'
service RioFormsService
{
    annotate Form with @restrict :
    [
        { grant : [ '*' ], to : [ 'any' ] }
    ];

    @cds.redirection.target
    @odata.draft.enabled
    entity Form as
        projection on my.Form;
}

