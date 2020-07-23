# RubyHashes

def array_2_hash emails, contacts
    index = 0
    if emails.length > 1
        contactKeys = contacts.keys
        for k in contactKeys
            contacts[k] = emails[index]
            index=index+1
        end
    end
    return contacts
end

#Found help for this portion at https://stackoverflow.com/questions/800122/best-way-to-convert-strings-to-symbols-in-hash
def array2d_2_hash contact_info, contacts
    index = 0
    contacts = Hash[contacts.map{|(k,v)| [k.to_sym,v]}]
    if contact_info.length > 1
        contactKeys = contacts.keys
        for k in contactKeys
            contacts[k] = {:email=>contact_info[index][0], :phone=>contact_info[index][1]}
            index=index+1
        end
    end
    return contacts
end

def hash_2_array contacts
    finalList = []
    emails = []
    nums = []
    names = []
    
    contactList = contacts.keys
    for x in contactList
        names << x.to_s
        nums << contacts[x][:phone]
        emails << contacts[x][:email]
    end
    
    finalList << emails << nums << names
    return finalList        
end
