

abstract class FormSubmissionStatus {
   const FormSubmissionStatus();
}

class InitialFormStatus extends FormSubmissionStatus{
  const InitialFormStatus();
}

class FormSubmitting extends FormSubmissionStatus{}

class SubmissionSuccess extends FormSubmissionStatus{}

class SubmissioFailed extends FormSubmissionStatus{
  final Exception exception;

  SubmissioFailed(this.exception);

}