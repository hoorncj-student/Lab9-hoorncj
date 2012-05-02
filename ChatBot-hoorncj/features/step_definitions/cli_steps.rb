Given /^the application is running$/ do
 run_interactive(unescape("ruby chatbot.rb"))
end

Then /^I should see "([^""]*)"$/ do |arg1|
 assert_partial_output(arg1)
end

Then /^it should exit with refusal$/ do 
 assert_exit_status_and_partial_output(true,"mmm...not feeling it today, sorry")
end

Then /^it should exit with "([^""]*)"$/ do |arg1|
 assert_exit_status_and_partial_output(true,"BOOM!")
end