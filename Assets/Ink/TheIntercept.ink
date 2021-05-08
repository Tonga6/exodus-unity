LIST Visitable = (_intro), (_meet), (_lunar), (_introspection), (_race), (_hospitalised), (_found_guard)

LIST Choices = wist, dread, joy, volunteered, warned, did_nothing

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
        ~ temp next_mod = RANDOM(1,6)
        
        {
        // 	- next_mod == 1 && Visitable ? (_meet): 
        // 	    ~ Visitable -= _meet
        // 		-> meet_greet
        		
        // 	- next_mod == 2 && Visitable ? (_lunar): 
        // 	    ~ Visitable -= _lunar
        // 		-> lunar_stop
        		
        // 	- next_mod == 3 && Visitable ? (_introspection): 
        // 	    ~ Visitable -= _introspection
        // 		-> introspection
        		
        // 	- next_mod == 4 && Visitable ? (_race): 
        // 	    ~ Visitable -= _race
        // 		-> race_day
        		
        	- next_mod == 5 && Visitable ? (_hospitalised): 
        	    ~ Visitable -= _hospitalised
        		-> hopsitalised_passenger
        		
        	- next_mod == 6 && !(Visitable ? (_hospitalised)) && Visitable ? (_found_guard): 
        	    ~ Visitable -= _hospitalised
        		-> finding_the_guard
        		
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
    * [wistful] ... wistful for home. I don't want to go.
        ~ Choices += wist
    * [dread] ... dread. Nothing about this journey is safe.
        ~ Choices += dread

    * [joy] ... joy. I've waited all my life for this moment, and it's finally here.
        ~ Choices += joy

- We crowded around the small viewport in our room and watched Earth shrink, but I didn't stay long. {Choices ? wist: It hurt too much. I worry that I'll never return.}{Choices ? dread: It only reminded me that there's no turning back.}{Choices ? joy: I'm ready to look ahead. If I never think of Earth again, it will be too soon.}

I think Rog {Choices ? wist: feels the same way.}{Choices ? dread: is too homesick to worry about what's ahead.}{Choices ? joy:is already counting the days until he can return.}
<> Artem seems pretty unemotional about the whole thing. I think he's just concerned about  putting food on the table.

Rog suggested we spend tomorrow getting to know each other better.
    * [I look forward to it]{Choices ? wist || Choices ? dread: ... Hopefully making some new friends will take my mind off of}{Choices ? wist: home.} {Choices ? dread: what lies ahead.} {Choices ? joy: ... New beginnings, new friends. I can't wait to leave the past behind.}
    * [I agreed reluctantly] {Choices ? wist||Choices ? dread: ... It's hard to think about anything }{Choices ? wist: but home,} {Choices ? dread: other than what lies ahead,} {wist||dread: but I agreed nonetheless. Getting off on the wrong foot will make for an uncomfortable journey.}{Choices ? joy: ... I'm not really interested in getting to know either of them, but 21 days is a long time to be crammed together with strangers.}

- I'm starting to nod off, better get some sleep. {Choices ? wist: Maybe I'll dream of home.} {Choices ? dread: Or try to, at least.} {Choices ? joy: Let's see what the future holds.}

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
    
    
===smuggled_cigs===
~day++
Day {day}

It was Artem's birthday today. We only found out when his wife called to celebrate it.
 * [Next Day]
    -> next_module
    
    
===sick_neighbour===
~day++
Day {day}

It was Artem's birthday today. We only found out when his wife called to celebrate it.
 * [Next Day]
    -> next_module
    
    
===halfway===
~day++
Day {day}

It was Artem's birthday today. We only found out when his wife called to celebrate it.
 * [Next Day]
    -> next_module
    
    
===hopsitalised_passenger===
~day++
Day {day}

I heard a guard hospitalised a passenger over in C-Block. Some argument over break-time that escalated too far. To be honest, I'm surprised

    * ... it hasn't happened before.[] The guards are always looking for an excuse to start a fight, and some of the guys here still haven't learned to behave. 
    
    * ... the passenger survived.[] The guards usually get carried away with these things.
    * ... the guard made it out.[] It's been a case of them or us between us passengers and the crew for a long time. The guard must have caught the passenger alone, or it might have been a different person in the med-bay.
    
- Word's been going around that a group's being formed to pay this guard a visit.

    * I volunteered[.] to join them. 
    ~ Choices += volunteered
    
        ** ... We have to protect ourselves.[] They need to be told that they can't do that to us. Otherwise, it could be me next.
        ** ... We need revenge.[] No way am I letting them get away with doing this to one of our own.
    -- <> I'll be informed once we find out where the guard lives.
        
    * I warned a guard about the plot. 
    ~ Choices += warned
        ** ... We can't meet violence with violence.[] There will be no winners if this guard gets hurt as a result of today.
        ** ... I scratch his back, he scratches mine.[] The guard patrols my ward, so it'd be nice to have him on side.
    -- <> He took my warning seriously, so hopefully nothing happens to this guard.
        
    * [I didn't get involved.] Someone just knocked on our door to recruit us, but we all turned him down. 
    ~ Choices += did_nothing
        ** ... I won't risk my neck for a stranger.[] {Choices ? wist: I didn't leave home to die far away from everyone I love.} {Choices ? dread: I have enough things to worry about already.} {Choices ? joy: I have too much to look forward to. I won't throw this fresh start away.}
        ** ... The passenger deserved it.[] Provoking a guard like that was bound to end poorly.
    -- <> 

- 
     * [Next Day]
        -> next_module
        
        
===finding_the_guard===
~day++
Day {day}

~temp test = Choices ? warned
 {test}
    * (first)... it hasn't happened before.[] The guards are always looking for an excuse to start a fight, and some of the guys here still haven't learned to behave. 
    
    * ... the passenger survived.[] The guards usually get carried away with these things.
    * ... the guard made it out.[] It's been a case of them or us between us passengers and the crew for a long time. The guard must have caught the passenger alone, or it might have been a different person in the med-bay.
    
- Word's been going around that a group's being formed to pay this guard a visit.

    * I volunteered[.] to join them. 
        ** ... We have to protect ourselves.[] They need to be told that they can't do that to us. Otherwise, it could be me next.
        ** ... We need revenge.[] No way am I letting them get away with doing this to one of our own.
    -- <> I'll be informed once we find out where the guard lives.
        
    * I warned a guard about the plot. 
        ** ... We can't meet violence with violence.[] There will be no winners if this guard gets hurt as a result of today.
        ** ... I scratch his back, he scratches mine.[] The guard patrols my ward, so it'd be nice to have him on side.
    -- <> He took my warning seriously, so hopefully nothing happens to this guard.
        
    * [I didn't get involved.] Someone just knocked on our door to recruit us, but we all turned him down.
        ** ... I won't risk my neck for a stranger.[] {Choices ? wist: I didn't leave home to die far away from everyone I love.} {Choices ? dread: I have enough things to worry about already.} {Choices ? joy: I have too much to look forward to. I won't throw this fresh start away.}
        ** ... The passenger deserved it.[] Provoking a guard like that was bound to end poorly.
    -- <> 

- 
     * [Next Day]
        -> next_module






















    -> END