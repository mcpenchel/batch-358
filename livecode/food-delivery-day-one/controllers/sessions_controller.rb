require_relative "../views/sessions_view"

class SessionsController

  def initialize(employee_repository)
    @employee_repository = employee_repository
    @view = SessionsView.new
  end

  def sign_in
    username = @view.ask_for("username")
    password = @view.ask_for("password")

    employee = @employee_repository.find_by_username(username)

    if employee && employee.password_is_correct?(password)
      @view.signed_in_successfully
      return employee
    else
      @view.wrong_credentials
      sign_in
    end
  end

end
