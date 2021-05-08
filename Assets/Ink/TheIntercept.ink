LIST Visitable = (_intro), (_meet), (_plant), (_flu), (_introspection), (_b_day), (_hospitalised), (_found_guard)

LIST Choices = wist, dread, joy, volunteered, warned, did_nothing

VAR day = 0


-> next_module


=== next_module ===
{
    - LIST_COUNT(Visitable) > 0:
    
        ~temp num = LIST_RANDOM(Visitable)
        //If first module play intro
        // {
        //     - Visitable ? (_intro):
        //         ~ Visitable -= _intro
        //         -> intro
                
        // }
        
        //else find random playable module
        ~ temp next_mod = RANDOM(1,7)
        
        {
        // 	- next_mod == 1 && Visitable ? (_meet): 
        // 	    ~ Visitable -= _meet
        // 		-> meet_greet
        		
        	- next_mod == 2 && day > 1 && Visitable ? (_flu): 
        	    ~ Visitable -= flu
        		-> flu
        		
        // 	- next_mod == 3 && Visitable ? (_introspection): 
        // 	    ~ Visitable -= _introspection
        // 		-> introspection
        		
        	- next_mod == 4 && Visitable ? (_b_day): 
        	    ~ Visitable -= _b_day
        		-> b_day
        		
        	- next_mod == 5 && Visitable ? (_hospitalised): 
        	    ~ Visitable -= _hospitalised
        		-> hopsitalised_passenger
        		
        	- next_mod == 6 && !(Visitable ? (_hospitalised)) && Visitable ? (_found_guard): 
        	    ~ Visitable -= _found_guard
        		-> finding_the_guard
        		
        	- next_mod == 7 && (Visitable ? (_plant)): 
        	    ~ Visitable -= _plant
        		-> plant_dies
        		
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
        
        
        
===flu===
~day++
Day {day}

There's been a flu outbreak on the ship - pretty nasty strain from what I've heard. I guess not everyone quarentined like they were supposed to before this journey.

    * ... I don't blame them.[] Most of us had to spend our entire savings just to make this trip. Two weeks in quarentine and without work would have starved some.
    
    * ... It was irresponsible.[] They disregarded the sacrifice that everyone else made, and now people might die before we even reach Mars.
    
-  Regardless, what's done is done. Now nobody can leave their rooms until the virus fades. Artem and I were in line with three people who are sick pretty bad with it, so I hope we didn't catch it. 

    * [Next Day]
        -> next_module
    



===introspection===
~day++
Day {day}


 * [Next Day]
    -> next_module


===plant_dies===
~day++
Day {day}

Artem's tulip died. It was malnourished to start with, and then the guards stopped letting us take water from the mess hall after some idiots shorted the lighting in their wing. Artem refused to let anyone pay for Clarke to smuggle some for us, so we watched it wilt until now it's safe to say that the plant is well a truly dead.

    * It's a shame.[]  {Choices ? wist: It reminded me of home.} {Choices ? dread: Watching it grow helped me take my mind off of things.} {Choices ? joy: The splash of colour was a nice contrast to our room.}
    * Makes no difference to me.[] Artem's not too fussed either, so I doubt I'll lose any sleep over the plant.
-
 * [Next Day]
    -> next_module
    
    
===b_day===
~day++
Day {day}

Turns out it was Artem's birthday today. We only found out when his wife called him in the morning. Rog and I 
    * ... let them celebrate alone.
        Artem's a quiet guy, we figured he would prefer to keep it between himself and his wife. We went next door to Declan and the others and played poker with them for the day.
    * ... joined the celebrations.[]//
        <> Any cause for celebration on this ship is a good thing. 
        Rog got his hands on some beer for the occasion. I guess he knows the right people, though I wonder what he paid for it.
        
-
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

A guard hospitalised someone over in C-Block. Shattered knee-cap and busted face, from what I heard. Apparently it was over some argument that escalated too far. To be honest, I'm surprised

    * ... it hasn't happened before.[] The guards are always looking for an excuse to start a fight, and some of the guys here don't know how to avoid one. 
    
    * ... the victim didn't get it worse.[] The guards have a tendency to get carried away with these things. 
    
    * ... the guard made it out.[] Plenty of the guys are itching to go with the guards because of how they treat us. The passenger must have been alone, or I reckon it would have been a different person in the med-bay.
    
- Some of us are getting together to pay this guard a visit.

    * I volunteered[.] to join them. 
    ~ Choices += volunteered
    
        ** ... We have to protect ourselves.[] If they think they can get away with this, it'll happen again. It could be me next.
        ** ... We need revenge.[] I won't let them get away with doing this to one of our own.
        
    --  Artem and Rog tried to talk me out of it, but my mind is made. They'll let me know once we find out where the guard lives.
        
    * I warned a guard about the plot. 
    ~ Choices += warned
        ** ... We can't meet violence with violence.[] There will be no winners if this guard gets hurt as a result of today.
        ** ... I scratch his back, he scratches mine.[] The guard patrols my ward, so it'd be nice to have him on side.
        
    -- He took my warning seriously, so hopefully nothing happens to this guard.
        
    * [I didn't get involved.] Someone just knocked on our door to recruit us, but we all turned him down. 
    ~ Choices += did_nothing
        ** ... I won't risk my neck for a stranger.[] {Choices ? wist: I didn't leave home to die far away from everyone I love.} {Choices ? dread: I have enough things to worry about already.} {Choices ? joy: I have too much to look forward to. I won't throw this fresh start away.}
        ** ... The passenger deserved it.[] Provoking a guard like that was bound to end poorly.
        
    -- Rog and Artem didn't get involved either.

- 
     * [Next Day]
        -> next_module
        
        
===finding_the_guard===
~day++
Day {day}

~temp test = Choices ? warned
 {test}
   
- 
     * [Next Day]
        -> next_module






















    -> END