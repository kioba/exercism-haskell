module SpaceAge (Planet(..), ageOn) where

data Planet = Mercury
            | Venus
            | Earth
            | Mars
            | Jupiter
            | Saturn
            | Uranus
            | Neptune

ageOn :: Planet -> Float -> Float
ageOn planet seconds = seconds / (planetTime planet * 31557600)

planetTime :: Planet -> Float
planetTime Mercury = 0.2408467
planetTime Venus = 0.61519726
planetTime Earth = 1.0
planetTime Mars = 1.8808158
planetTime Jupiter = 11.862615
planetTime Saturn = 29.447498
planetTime Uranus = 84.016846
planetTime Neptune = 164.79132