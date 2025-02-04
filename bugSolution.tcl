proc myproc {a b} { 
    if { [llength $a] > 1 } { 
        # Handle list arguments
        foreach val $a { puts $val }
    } else { 
        puts "$a $b"
    }
    return [expr {$a + $b}] 
}
puts [myproc 1 2] 
puts [myproc {1 2} 3]