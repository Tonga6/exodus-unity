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
You crowd around the viewport with your two ship mates and watch the blue planet recede. This will be the first of many days away from home.
"Could be a long time before we see home again." Rog breaks the silence.

    * (hopeful) [But Not Forever] "We'll be back one day."
    You can hardly believe that it's come to this. It never occurred to you that things might get so bad that you would have to leave, and yet here you are.
        You find it hard to watch your home drift away so you look over to Rog.
        
    * [Thank Riddance]"I hope so."
        You can hardly believe that your chance has finally come after all these years. A chance for something new. Something better. 
        Glancing over, you can see Rog doesn't agree with your sentiment.
        
        
- He returns your look with a weak smile. 
{hopeful: "I hope you're right.| "Earth didn't treat you well, I take it.} What about you?" Rog leans back to address Artem.

"There's nothing left for me here." Artem shrugs. "I don't see that changing any time soon."
"{hopeful:Guess we'll need to find someone else to help split the costs for our return journey when we arrive.|Guess I'll need to find another pair when we arrive to split the costs for the return journey, so.}"
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