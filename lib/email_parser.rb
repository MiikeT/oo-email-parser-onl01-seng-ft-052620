# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
    attr_accessor :emails

    def initialize(emails)
        @emails = emails
    end

    def parse
        email_addresses = @emails.gsub(/,|\s/, " ").split.uniq
        email = email_addresses.map.with_index do |address, i|
            email_addresses[i]
        end
        email
    end
end