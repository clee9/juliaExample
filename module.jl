module Example

    export scale, add, sub, pow

    # Define a function that takes a function as an argument

    function mapper(fn) 
        function f(m)
            m -> map(fn,m)
        end
        f
    end

    function scale(x)
        return mapper(f -> f*x)
    end

    function add(x)
        return mapper(f -> f+x)
    end

    function sub(x)
        return mapper(f -> f-x)
    end

    function pow(x)
        return mapper(f -> f^x)
    end


end
