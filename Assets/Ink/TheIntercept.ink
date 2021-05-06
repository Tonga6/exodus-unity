LIST Visitable = (_intro), (_meet), (_lunar), (_introspection), (_race)
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
        	- next_mod == 1 && Visitable ? (_meet): 
        	    ~ Visitable -= _meet
        		-> meet_greet
        		
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

23:48
We started moving a couple of hours ago. This journey has me feeling
    * (wist)[wistful] ... wistful for home. I don't want to go.
    *(dread) [dread] ... dread. Nothing about this journey is safe.
    * (joy)[joy] ... joy. I've waited all my life for this moment, and it's finally here.

- We crowded around the small viewport in our room and watched Earth shrink, but I didn't stay long. {wist: It hurt too much. I worry that I'll never return.}{dread: It only reminded me that there's no turning back.}{joy: I'm ready to look ahead. If I never think of Earth again, it will be too soon.}

I think Rog {wist: feels the same way.}{dread: is too homesick to worry about what's ahead.}{joy:is already counting the days until he can return.}
<> Artem seems pretty unemotional about the whole thing. I think he's just concerned about  putting food on the table.

Rog suggested we spend tomorrow getting to know each other better.
    * [I look forward to it]{wist||dread: Hopefully making some new friends will take my mind off of}{wist: home.} {dread: what lies ahead.} {joy: New beginnings, new friends. I can't wait to leave the past behind.}
    * [I agreed reluctantly] {wist||dread: It's hard to think about anything }{wist: but home,} {dread: other than what lies ahead,} {wist||dread: but I agreed nonetheless. Getting off on the wrong foot will make for an uncomfortable journey.}{joy: I'm not really interested in getting to know either of them, but 21 days is a long time to be crammed together with strangers.}

- I'm starting to nod off, better get some sleep. {wist: Maybe I'll dream of home.} {dread: Or try to, at least.} {joy: Let's see what the future holds.}

    * [Next Day]
        -> next_module



===meet_greet===

~ day++
Day {day}

07:13

After my first day on the ship, the thing that stood out to me the most was
    * [The noise]
    * [How crowded it is]
    * [a]

- <>They only let us out of our cabins a couple of times a day, not that there's much to do anyway.

    * [Next Day]
        -> next_module
        
        
        
===lunar_stop===
~day++
Day {day}

We took a pit stop at the lunar outpost.
 * [Next Day]
    -> next_module




===introspection===
~day++
Day {day}


 * [Next Day]
    -> next_module


===race_day===
~day++
Day {day}

Rog insisted we detour to the races.
 * [Next Day]
    -> next_module
    
    
===b_day===
~day++
Day {day}

It was Artem's birthday today. We only found out when his wife called to celebrate it.
 * [Next Day]
    -> next_module






















    -> END