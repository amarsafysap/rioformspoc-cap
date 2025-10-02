namespace RioForms;
using { managed } from '@sap/cds/common';
entity Questions
{
    key ID : UUID;
    question : String(200);
    // FK you actually store & edit
    type_code : Integer;

    // Association for text
    typeRef : Association to QuestionTypes
                on typeRef.code = $self.type_code;

    form : Association to one Form;
}

entity Form
{
    key ID : UUID;
    formName : String(50);
    formDescription : String(200);
    active : Boolean;
    questions : Composition of many Questions on questions.form = $self;
}

entity FormRecord : managed
{
    key ID : UUID;
    firstName : String(100);
    lastName : String(100);
    form : Association to one Form;
    answerRecords : Composition of many AnswerRecord on answerRecords.formRecord = $self;
}

entity AnswerRecord
{
    key ID : UUID;
    question : Association to one Questions;
    textAnswer : String(100);
    boolAnswer : Boolean;
    formRecord : Association to one FormRecord;
}

entity QuestionTypes {
  key code : Integer;
      name : String(40);
}
