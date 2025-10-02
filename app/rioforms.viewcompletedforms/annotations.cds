using RioFormsService as service from '../../srv/service';
annotate service.FormRecord with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'firstName',
                Value : firstName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'lastName',
                Value : lastName,
            },
            {
                $Type : 'UI.DataField',
                Value : createdAt,
            },
            {
                $Type : 'UI.DataField',
                Value : createdBy,
            },
            {
                $Type : 'UI.DataField',
                Value : modifiedAt,
            },
            {
                $Type : 'UI.DataField',
                Value : modifiedBy,
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
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Answers',
            ID : 'Answers',
            Target : 'answerRecords/@UI.LineItem#Answers',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'firstName',
            Value : firstName,
        },
        {
            $Type : 'UI.DataField',
            Label : 'lastName',
            Value : lastName,
        },
        {
            $Type : 'UI.DataField',
            Value : createdAt,
        },
        {
            $Type : 'UI.DataField',
            Value : createdBy,
        },
        {
            $Type : 'UI.DataField',
            Value : modifiedAt,
        },
        {
            $Type : 'UI.DataField',
            Value : modifiedBy,
        },
    ],
);

annotate service.FormRecord with {
    form @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'Form',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : form_ID,
                ValueListProperty : 'ID',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'formName',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'formDescription',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'active',
            },
        ],
    }
};

annotate service.AnswerRecord with @(
    UI.LineItem #Answers : [
        {
            $Type : 'UI.DataField',
            Value : question.question,
            Label : 'question',
        },
        {
            $Type : 'UI.DataField',
            Value : textAnswer,
            Label : 'textAnswer',
        },
        {
            $Type : 'UI.DataField',
            Value : boolAnswer,
            Label : 'boolAnswer',
        },
    ]
);

