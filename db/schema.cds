namespace RioForms;

entity Questions
{
    key ID : UUID;
    question : String(200);
    questionType : Association to one QuestionTypes;
    form : Association to one Form;
}

entity QuestionTypes
{
    key ID : UUID;
    type : String(15);
}

entity Form
{
    key ID : UUID;
    formName : String(50);
    formDescription : String(200);
    active : Boolean;
    questions : Composition of many Questions on questions.form = $self;
}

entity FormRecord
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
