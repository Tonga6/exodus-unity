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
I can't believe this day has come. As we left Earth behind, I felt
    * (wist)[wistful] ... wistful. I don't want to go... Maybe one day I can return.
    *(dread) [dread] ... dread. This journey is more dangerous than anything I have ever done.
    * (joy)[joy] ... joy. I've waited all my life for this moment, and it's finally here.

- We watched the planet drift away from our small viewport for while, but I didn't stay long. {wist: It hurt too much. Somehow, I know I'll never return}{dread: It only reminded me that there's no turning back.}{joy: I'm ready to look ahead. If I never think of Earth again, it will be too soon.}

I think Rog {wist: feels the same way.}{dread: is too homesick to worry about what's ahead.}{joy:is already counting the days until he can return.}
<> Artem seems pretty unemotional about the whole thing. I think he's just concerned about  putting food on the table.

Rog suggested we get to know each other better over breakfast tomorrow.
    * [I look forward to it]{wist||dread: Hopefully making some new friends will take my mind off of}{wist: home} {dread: what lies ahead.} {joy: New beginnings, new friends. I can't wait to leave the past behind.}
    * [I agreed reluctantly] {wist||dread: It's hard to think about anything }{wist: but home,} {dread: other than what lies ahead,} {wist||dread: but I agreed nonetheless. Getting off on the wrong foot will make for an uncomfortable journey.}{joy: I'm not really interested in getting to know either of them, but I suppose I'll have to play nice while we're together.}

- I'm starting to nod off, better get some sleep. {wist: Maybe I'll dream of home.} {dread: Or try to, at least.} {joy: Let's see what the future holds.}

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

There's always sound in the ship. A constant hum.
 * [Next Day]
    -> next_module


===race_day===
~day++
Day {day}

Rog insisted we detour to the races.
 * [Next Day]
    -> next_module






















    -> END