# Load the module and generate the functions
module GreetWrap
  using CxxWrap
  @wrapmodule(joinpath("/home/angray/julia_warp/","greet_wrap"))

  function __init__()
    @initcxx
  end
end

# Call greet and show the result
@show GreetWrap.greet()