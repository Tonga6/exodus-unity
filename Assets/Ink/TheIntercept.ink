LIST Visitable = (_intro), (_meet), (_clarke), (_search), (_plant), (_flu), (_b_day), (_hospitalised), (_found_guard), (_guard_retal)

LIST Choices = wist, dread, joy, volunteered, warned, did_nothing, guard_dead, guard_beat, guard_scared, bought

VAR day = 0

Millions of struggling emigrants leave their home on Earth in search of work and greater fortune in Avalon, the burgeoning colony on Mars.
    * [Begin]
        -> next_module


=== next_module ===
{
    - LIST_COUNT(Visitable) > 0:
    
        ~temp num = LIST_RANDOM(Visitable)
        
        {
            - Visitable ? (_intro):
                ~ Visitable -= _intro
                -> intro
                
            - Visitable ? (_meet): 
        	    ~ Visitable -= _meet
        		-> meet_greet
                
        }
        
        //else find random playable module
        ~ temp next_mod = RANDOM(1,16)
        
        {
        	- next_mod == 1 && Visitable ? (_clarke): 
        	    ~ Visitable -= _clarke
        		-> clarke
        		
        	- next_mod == 2 && day > 3 && Visitable ? (_flu): 
        	    ~ Visitable -= _flu
        		-> flu
        		
        // 	- next_mod == 3 && Visitable ? (_introspection): 
        // 	    ~ Visitable -= _introspection
        // 		-> introspection
        		
        	- next_mod == 4 && !(Visitable ? (_clarke)) && Visitable ? (_b_day): 
        	    ~ Visitable -= _b_day
        		-> b_day
        		
        	- next_mod == 5 && day > 5 && Visitable ? (_hospitalised): 
        	    ~ Visitable -= _hospitalised
        		-> hopsitalised_passenger
        		
        	- next_mod == 6 && !(Visitable ? (_hospitalised)) && Choices ? volunteered && Visitable ? (_found_guard): 
        	    ~ Visitable -= _found_guard
        		-> finding_the_guard
        		
        	- next_mod == 7 && day > 4 && !(Visitable ? (_clarke)) && (Visitable ? (_plant)): 
        	    ~ Visitable -= _plant
        		-> plant_dies

            - next_mod == 8 && !(Visitable ? (_clarke)) && (Visitable ? (_search)): 
        	    ~ Visitable -= _search
        		-> search
        		
        	- next_mod == 9 && (!(Visitable ? (_found_guard)) || Choices ? did_nothing || Choices ? warned) && !(Choices ? guard_scared) && (Visitable ? (_guard_retal)): 
        	    ~ Visitable -= _guard_retal
        		-> guard_retaliation
        		
        	- else:	
        		->next_module
        }

}
No more modules to visit. To be continued.
    -> END
    
===intro===
~day++

Day {day}

Lights just went out on the ship for the night. I can't help but feel
    * [wistful] ... wistful for home. I don't want to go.
        ~ Choices += wist
    * [dread] ... dread. It's a long way to Mars. A lot can happen.
        ~ Choices += dread

    * [excited] ... excited. I've waited all my life for this moment, and it's finally here.
        ~ Choices += joy

- We crowded around the small viewport in our room and watched Earth shrink, but I didn't stay long. {Choices ? wist: It hurt too much. I worry that I'll never return.}{Choices ? dread: It only reminded me that there's no turning back.}{Choices ? joy: I'm ready to look ahead. If I never think of Earth again, it will be too soon.}

I got the impression that Mia {Choices ? wist: feels the same way.}{Choices ? dread: is too homesick to worry about what's ahead.}{Choices ? joy: feels the opposite.}
<> My other roommate, Artem, seemed pretty stoic about it all.

Mia suggested we get to know each other better tomorrow.
    * [I look forward to it]{Choices ? wist || Choices ? dread: ... Hopefully making some new friends will take my mind off of}{Choices ? wist: home.} {Choices ? dread: what lies ahead.} {Choices ? joy: ... New beginnings, new friends. Things are starting to look up for me.}
    * [I agreed reluctantly] {Choices ? wist||Choices ? dread: ... It's hard to think about anything }{Choices ? wist: other than home,} {Choices ? dread: other than what lies ahead,} {Choices ? wist||Choices ? dread: but I agreed nonetheless. After all, I will be spending the next three months with them.}{Choices ? joy: ... I'm not really interested in getting to know either of them, but three months is a long time to be crammed together with strangers.}

- It's been a long day and I'm starting to nod off now. Better get some sleep. {Choices ? wist: Maybe I'll dream of home.} {Choices ? dread: Or try to, at least.} {Choices ? joy: Bring on tomorrow.}

    * [Next Day]
        -> next_module



===meet_greet===

~ day++
Day {day}

We're technically only supposed to leave our cabins during breaks, but everyone on our deck spent most of the day wandering the ship. The guards stopped trying to turn us away when they realised how futile it was.

I have to say, I didn't expect

    * (noise)[the noise] ... the noise. There were so many of us that I could hardly hear myself when I talked, and all the languages being spoken mixed into one indescernible clamour.
    * (crowd)[the crowd] ... the crowd. There must be close to a thousand people packed into our deck alone. I was constantly losing sight of Mia and Artem only to spot them pushed to the other end of the corridor. It took us an hour just to get from one side to the other.

- We spent the rest of our time in our room once our sight seeing was done. Even then, {noise: The walls did nothing to dampen the noise outside} {crowd: I could feel the vibrations of the crowd's footsteps outside}.

Turns out Mia is the oldest of seven kids. Her dad was diagnosed with lung cancer a couple of months ago so she's bound for Avalon to earn enough for his dad's treatment.

Artem didn't really tell us much about himself. He used to work as mechanic, then he ran into debt someway or another. Now he's had to leave his wife to repay.


    * [Next Day]
        -> next_module
        
        
        
===introspection===    
~ day++
Day {day}

07:13

Introspection

    * [Next Day]
        -> next_module
        
        
        
===flu===
~day++
Day {day}

There's been a flu outbreak on the ship - pretty nasty strain from what I've heard. I guess not everyone quarantined before coming on board like they were supposed to.

    * ... I don't blame them.[] Passage on this ship wasn't cheap. Two weeks without work would have been too much for a lot of us.
    
    * ... It was irresponsible.[] They disregarded the sacrifice that everyone else made, and now people are going to die before we even reach Avalon.
    
-  Regardless, what's done is done. Now nobody can leave their rooms until the virus fades. Artem and I were in line for food with someone who is sick pretty bad with it, so I hope we didn't catch anything. 

    * [Next Day]
        -> next_module
    



===plant_dies===
~day++
Day {day}

Mia's tulip has died. One of her brother's gave it to take with her, but I guess the plant didn't like it's conditions. It's been wilting every day, only now it's well and truly dead.

    * ... It's a shame.[]  {Choices ? wist: It reminded me of home.} {Choices ? dread: Watching it grow helped me take my mind off of things.} {Choices ? joy: The splash of colour was a nice contrast to our room.}
    * ... It makes no difference to me.[] As problems that we could encounter on this trip go, a dead plant is pretty low on the list. Mia's pretty disappointed, but only because she had to lie to her brother about it.
-
 * [Next Day]
    -> next_module
    
    
===b_day===
~day++
Day {day}

Turns out it was Artem's birthday today. We only found out when his wife called him in the morning. Mia and I 
    * ... let them celebrate alone.
        Artem's a quiet guy, we figured he would prefer to keep it between himself and his wife. We went over to the guys next door and played cards with them for the day.
        ~ Choices += bought
    * ... joined the celebrations.[]//
        <> Any cause for celebration on this ship should be taken advantage of. 
        Mia got her hands on some drink for the occasion. I hope she didn't pay Clarke too much for it.
        
-
 * [Next Day]
    -> next_module
    
===clarke===

~day++
Day {day}

Most of us are heading to Avalon to find opportunity. Turns out there's opportunity to be found here, too. A passenger just knocked at our door and introduced himself as Clarke, offering all sorts of contraband and luxuries. He said he has 'associates' on Avalon we can can pay back when we find work on Avalon.

    * I took him up on his offer.[] I'm already deep in debt, why not go a little deeper? In for a penny, in for a pound.
        ~Choices += bought
    * I turned him down.[] I know a shady character when I see one, and Clarke certainly matched the description.
    
-
 * [Next Day]
    -> next_module
    
    

===search===
~day++
Day {day}

We had a surprise search in the middle of the night. A group of guards burst into our room and started going through all of our things. I guess someone must have let slip about Clarke's racket, and now the guards are doing a sweep for contraband.


    {Choices ? bought: They found the things I had bought from Clarke and gave me a couple of bruised ribs for my troubles.}
    
-
 * [Next Day]
    -> next_module
    
    
===sick_neighbour===
~day++
Day {day}

We've been listening to Devin hack his guts up all day. The med-bays are full, so .
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

A guard hospitalised someone in our block. Gave the passenger a shattered knee-cap and fractured orbital bone. Apparently it was over some argument that escalated too far. To be honest, I'm surprised

    * ... it hasn't happened before.[] The guards love to find any excuse to start a fight, and some of the guys here haven't learned how to avoid one. 
    
    * ... the victim didn't get it worse.[] The guards have a tendency to get carried away when they're on a power trip. 
    
    * ... the guard made it out.[] Plenty of the guys are itching to go with the guards because of how they treat us. The victim must have been alone, or I reckon it would have been a different person in the med-bay.
    
- Some people are getting together to pay this guard a visit.

    * I joined[.] them 
    ~ Choices += volunteered
    
        ** ... to protect ourselves.[] If the guards think they can get away with this, it'll happen again. It could be me next.
        ** ... for revenge.[] I won't let the guards get away with doing this to one of our own.
        
    --  Artem and Mia tried to talk me out of it, but my mind is made up. I'll hear  when we track down where the guard lives.
        
    * I warned a guard about the plot. 
    ~ Choices += warned
        ** ... We can't meet violence with violence.[] Things will only get worse if this guard gets hurt as a result of today.
        ** ... Quid pro quo.[] I know where the power lies. It would be nice to have the guards on my side.
        
    -- He took my warning seriously, so hopefully nothing happens to this guard.
        
    * [I didn't get involved.] Someone just knocked on our door to recruit us, but we all turned him down. 
    ~ Choices += did_nothing
        ** ... I won't risk my neck for a stranger.[] {Choices ? wist: I didn't leave home to die far away from everyone I love.} {Choices ? dread: I have enough things to worry about already.} {Choices ? joy: I have too much to look forward to. I won't throw this fresh start away.}
        ** ... The passenger deserved it.[] Provoking a guard like that was bound to end poorly. It's a harsh way to learn, but it will be beneficial in the long run for them.

- 
     * [Next Day]
        -> next_module
        
        
===finding_the_guard===
~day++
Day {day}


    I got word during lunch that someone had found where the guard's room is. We're just back from paying him a visit. We 

    * ... killed him.
        ~Choices += guard_dead
        <> I haven't managed to completely wash the blood off of my hands yet.
        ** [I'm glad we killed him.]
            But I'm glad we killed him. As far as I'm concerned, he got what he deserved.
            -> gather
        ** <> [I feel sick.]
            I feel sick. I didn't mean things to go as far as they did, but I couldn't stop it. I noticed the way Mia and Artem looked at me when they saw the blood, and I don't blame them.
            -> gather
            
    * ... beat him.
        ~ Choices += guard_beat
        ... Only as much as he gave our guy, plus interest. If he's lucky, he'll be back on his feet by the time we reach Avalon. Artem and Mia were pretty unhappy when I came back, but they seemed relieved that we didn't take it any further with the guard.
            
        -> gather
        
    * ... intimidated him.
        He'll be sore for the next week, but he can still walk which is more than can be said for his victim. And now that the guards know we can find them, I expect they'll leave us alone.
        ~ Choices += guard_scared

        
        -> gather
    



-> gather


=gather
-   {Choices ? guard_dead: There's sure to be some kind of retaliation from the guards after what {Choices? volunteered: we | they} did.}
    {Choices ? guard_beat: 
        I reckon the other guards will make a small show of strength after this and then that will be that. They know we could have done a lot worse. 
    }
    {Choices ? guard_scared: I don't expect the guards to retaliate. They know we let him off easy.}

-
     * [Next Day]
        -> next_module



===guard_retaliation===
~ Visitable -= _found_guard
~day++
Day {day}
    
{Choices ? guard_dead && Choices ? volunteered: A bunch of guards beat us in the middle of the night. They wanted payback for what we did to their friend, but they didn't know that I had a hand in it because I could hear our neighbours getting a similar treatment. Seems they just wanted to exact revenge on as many of us as they could.}


{Choices ? warned: 
    A bunch of passengers were taken away last night. Seems like my tip about the plot to find that guard paid off. Hopefully it doesn't lead back to me.
    -> gather
}
{Choices ? did_nothing: 
    ~Choices += guard_dead
    The guard is dead. The one that beat up O'Brien. I know he's dead because a bunch of guards gave us a beating in the middle of the night. They musn't know who were responsible, because I could hear our neighbours getting the same treatment. They just wanted to exact revenge on as many of us as they could.
}

{Choices ? guard_dead && !(Visitable ? _flu): The med bay is still overwhelmed because of the flu outbreak, so we just have to just lick our wounds.}
-
-> gather
=gather
- 
     * [Next Day]
        -> next_module












    -> END