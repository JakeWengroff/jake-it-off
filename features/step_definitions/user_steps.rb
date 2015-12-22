class User
  attr_accessor :name, :email
  def save!
    pp @name
    pp @email
  end
end

Given(/^the following user exists:$/) do |table|
  # table is a Cucumber::Ast::Table
  pending # express the regexp above with the code you wish you had
end
