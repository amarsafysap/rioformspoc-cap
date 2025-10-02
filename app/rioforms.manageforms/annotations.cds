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
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Information',
            ID : 'Information',
            Target : '@UI.FieldGroup#Information',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Questions',
            ID : 'Questions',
            Target : 'questions/@UI.LineItem#Questions',
        },
    ],
    UI.FieldGroup #Information : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : formDescription,
                Label : '{i18n>Formdescription}',
            },
            {
                $Type : 'UI.DataField',
                Value : formName,
                Label : '{i18n>Formname}',
            },
            {
                $Type : 'UI.DataField',
                Value : active,
                Label : '{i18n>Active}',
            },
        ],
    },
    UI.HeaderInfo : {
        TypeName : 'Form',
        TypeNamePlural : 'Forms',
        Title : {
            $Type : 'UI.DataField',
            Value : formName,
        },
    },
);

annotate service.Questions with @(
    UI.LineItem #Questions : [
        {
            $Type : 'UI.DataField',
            Value : question,
            Label : '{i18n>Question}',
        },
        {
            $Type : 'UI.DataField',
            Value : type_code,
            Label : '{i18n>Typecode}',
        },
    ]
);

annotate service.Questions with {
    type_code @(
        Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'QuestionTypes',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : type_code,
                    ValueListProperty : 'code',
                },
            ],
        },
        Common.ValueListWithFixedValues : true,
    )
};

annotate service.QuestionTypes with {
    code @Common.Text : name
};