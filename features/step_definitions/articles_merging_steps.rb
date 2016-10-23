Given /^the following articles exist$/ do |table|
  # table is a Cucumber::Ast::Table
  Article.create table.hashes
  #pending # express the regexp above with the code you wish you had
end
