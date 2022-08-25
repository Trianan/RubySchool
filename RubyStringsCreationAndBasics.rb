#!/usr/bin/ruby 

require '.\Helpers.rb'

# RUBY STRINGS - CREATION & BASICS:

# Methods of creating strings:
a = String.new # Empty string
b = String.new("lksjflks")
c = String("ksakjaldvir")
d = "rtqdtfagasd"
print_strings(a, b, c, d)

# Difference between double and single quotes:
a = "Apple\n'Banana'\nCake" # One may contain the other, but not itself.
b = 'Apple\n"Banana"\nCake' # Escape chars are not interpreted.
print_strings(a, b)

# Defining different string delimiters:
a = %#"This""''"'" 'is' "a""'"'very" 'ugly' """'string"'""#
b = %(This is a "string", it's an array of chars)
c = %[Also string]
d = %{Stringy string}
print_strings(a, b, c, d)

# Special string delimiter-definers:
a = %Q*This is a double-quoted string\nIt allows escape chars*
b = %q(This is a single-quoted string.)
#c = %x[Backquoted string.]
# Escaping quotes:
d = "Escape, \"quotes\", escape!"
print_strings(a, b, c, d)

# Here Documents:
heredoc = <<ANYTHINGUWANT # Creates free-format strings.
  Here are some words.

    Here 

      "are"
  'some'

%%())()(more.

  Have a few""'""'""<<ANYTHING" more.

   W
    e
     e
      e
       e
        e
         e
          e
            e
              e
                e
                  e
                     e
                        e
                           e
                              e
                                  e
                                      e
                                          e
                                              e
                                                   e
                                                         e
                                                                e
                                                                        !
ANYTHINGUWANT
print_strings(heredoc)

# String methods:
print heredoc.empty?, ", "
print heredoc.length, "\n"
