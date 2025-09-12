using RioFormsService as service from '../../srv/service';
annotate service.Form with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'formName',
                Value : formName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'formDescription',
                Value : formDescription,
            },
            {
                $Type : 'UI.DataField',
                Label : 'active',
                Value : active,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Formname}',
            Value : formName,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Formdescription}',
            Value : formDescription,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Active}',
            Value : active,
        },
    ],
);

