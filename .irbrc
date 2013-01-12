require "awesome_print"
AwesomePrint.irb!
def show_regexp(string, pattern)
  match = pattern.match(string)
  return "#{match.pre_match}->#{match[0]}<-#{match.post_match}" unless match.nil?
  "no match"
end
