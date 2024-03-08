//This file was generated from (Academic) UPPAAL 5.0.0 (rev. 714BA9DB36F49691), 2023-06-21

/*

*/

//strategy dur = maxE(duration_c) [<= 1000]{SpotifyJourney.location, visited_start} -> {danceability_c, acousticness_c, duration_c, energy_c}: <> SpotifyJourney.end

//strategy dan = maxE(-danceability_c) [<= 1000]{SpotifyJourney.location, visited_start} -> {danceability_c, acousticness_c, duration_c, energy_c}: <> SpotifyJourney.end

//strategy aco = maxE(-acousticness_c) [<= 1000]{SpotifyJourney.location, visited_start} -> {danceability_c, acousticness_c, duration_c, energy_c}: <> SpotifyJourney.end

//strategy ene = maxE(energy_c) [<= 1000]{SpotifyJourney.location, visited_start} -> {danceability_c, acousticness_c, duration_c, energy_c}: <> SpotifyJourney.end

//strategy dur_visited = maxE(duration_c) [<= 1000]{SpotifyJourney.location, visited_start} -> {danceability_c, acousticness_c, duration_c, energy_c}: <> SpotifyJourney.end && visited_start

//strategy dan_visited = maxE(-danceability_c) [<= 1000]{SpotifyJourney.location, visited_start} -> {danceability_c, acousticness_c, duration_c, energy_c}: <> SpotifyJourney.end && visited_start

//strategy aco_visited = maxE(-acousticness_c) [<= 1000]{SpotifyJourney.location, visited_start} -> {danceability_c, acousticness_c, duration_c, energy_c}: <> SpotifyJourney.end && visited_start

//strategy ene_visited = maxE(energy_c) [<= 1000]{SpotifyJourney.location, visited_start} -> {danceability_c, acousticness_c, duration_c, energy_c}: <> SpotifyJourney.end && visited_start

strategy opt = maxE((-danceability_c - 3*acousticness_c + energy_c + duration_c)) [<= 1000]{SpotifyJourney.location, visited_start} -> {danceability_c, acousticness_c, duration_c, energy_c}: <> SpotifyJourney.end && visited_start
saveStrategy("/home/paul/Documents/spotify_journey/out/uppaal_models/opt.json", opt)

E[<=1000; 10000] (max: duration_c)
//E[<=1000; 10000] (max: duration_c) under dur
//E[<=1000; 10000] (max: duration_c) under dur_visited
E[<=1000; 10000] (max: duration_c) under opt

E[<=1000; 10000] (max: danceability_c)
//E[<=1000; 10000] (max: -danceability_c) under dan
//E[<=1000; 10000] (max: -danceability_c) under dan_visited
E[<=1000; 10000] (max: danceability_c) under opt

E[<=1000; 10000] (max: acousticness_c)
//E[<=1000; 10000] (max: -acousticness_c) under aco
//E[<=1000; 10000] (max: -acousticness_c) under aco_visited
E[<=1000; 10000] (max: acousticness_c) under opt

E[<=1000; 10000] (max: energy_c)
//E[<=1000; 10000] (max: energy_c) under ene
//E[<=1000; 10000] (max: energy_c) under ene_visited
E[<=1000; 10000] (max: energy_c) under opt
