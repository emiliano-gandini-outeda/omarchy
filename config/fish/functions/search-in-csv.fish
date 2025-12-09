function search-in-csv
    if test (count $argv) -ne 1
        echo "Usage: search-in-csv <search_string>"
        return 1
    end
    
    set query $argv[1]
    
    # If you have parallel installed and want to use all cores:
    if type -q parallel
        parallel rg -i --with-filename "$query" ::: cedulas-*.csv
    else
        rg -i --with-filename "$query" cedulas-*.csv
    end
end
