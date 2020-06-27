function kt
    set v (echo $argv[1] | cut -f1 -d'.')
    kotlinc "$v".kt
    echo "Running $v"
    kotlin "$v"Kt
end
