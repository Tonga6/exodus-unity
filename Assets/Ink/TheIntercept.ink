LIST Visitable = (_intro), (_lunar), (_introspection), (_race)
VAR day = 0


-> next_module


=== next_module ===
{
    - LIST_COUNT(Visitable) > 0:
    
        ~temp num = LIST_RANDOM(Visitable)
        //If first module play intro
        {
            - Visitable ? (_intro):
                ~ Visitable -= _intro
                -> intro
                
        }
        
        //else find random playable module
        ~ temp next_mod = RANDOM(1,4)
        
        {
        	- next_mod == 1 && Visitable ? (_intro): 
        	    ~ Visitable -= _intro
        		-> intro
        		
        	- next_mod == 2 && Visitable ? (_lunar): 
        	    ~ Visitable -= _lunar
        		-> lunar_stop
        		
        	- next_mod == 3 && Visitable ? (_introspection): 
        	    ~ Visitable -= _introspection
        		-> introspection
        		
        	- next_mod == 4 && Visitable ? (_race): 
        	    ~ Visitable -= _race
        		-> race_day
        		
        	- else:	
        		->next_module
        }

}
No more modules to visit
    -> END
    
===intro===
~day++

Day {day}
VAR felt = "" 
It will be a long time before I can return home. As we left Earth behind, I felt <>
    * [hope] ... hope
    * [dread]
- <> at
    * [End Intro]
        -> next_module




===lunar_stop===
~day++
Day {day}

We took a pit stop at the lunar outpost.
 * [End Lunar]
    -> next_module




===introspection===
~day++
Day {day}

There's always sound in the ship. A constant hum.
 * [End Introspection]
    -> next_module


===race_day===
~day++
Day {day}

Rog insisted we detour to the races.
 * [End Race Day]
    -> next_module






















    -> END