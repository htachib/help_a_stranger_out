module Deeds
  class Base
    DEFAULTS = {
      1 => {
        title: 'Carrying Groceries',
        description: 'Help a stranger carry groceries from the store to their car.',
        image: 'lift-a-burden'
      },
      2 => {
        title: 'Give Coffee $',
        description: 'Buy a coffee for someone behind you in line at the coffee shop.',
        image: 'donate-money'
      },
      3 => {
        title: 'Thank veterans',
        description: 'Write a letter to a deployed or wounded member of the military through <a href="https://www.operationgratitude.com/express-your-thanks/write-letters/">Operation Gratitude</a>',
        image: 'recognize'
      },
      4 => {
        title: 'Give Toll $',
        description: "Pay for someone's groceries behind you in line.",
        image: 'donate-money'
      },
      5 => {
        title: 'Friendly Greeting',
        description: 'Tell someone to have a good day and really mean it.',
        image: 'spread-positivity'
      },
      6 => {
        title: 'Give Directions',
        description: 'Take a minute to direct someone who is lost.',
        image: 'donate-time'
      },
      7 => {
        title: 'Share food',
        description: 'Give a homeless person your doggie bag.',
        image: 'donate-time'
      },
      8 => {
        title: 'Spread compliments',
        description: 'Give a compliment to a stranger.',
        image: 'spread-positivity'
      },
      9 => {
        title: 'Recycle',
        description: 'Give your old clothes to a shelter.',
        image: 'donate-time'
      },
      10 => {
        title: 'Help animals',
        description: 'Volunteer at an animal shelter.',
        image: 'donate-time'
      },
      11 => {
        title: "Elevator Greeting",
        description: "Say 'Good morning' to a person standing next to you in the elevator.",
        image: 'spread-positivity'
      },
      12 => {
        title: 'Notice good work',
        description: "Give praise to someone at work you don't know very well.",
        image: 'recognize'
      },
      13 => {
        title: 'Uplifting notes',
        description: 'Place a note with an uplifting message or quote on a random car.',
        image: 'spread-positivity'
      },
      14 => {
        title: 'Carry heavy things',
        description: 'Help a stranger struggling to carry a heavy box, suitcase, etc.',
        image: 'give-a-hand'
      },
      15 => {
        title: 'Open doors',
        description: 'Hold the door open for a stranger entering/leaving a building after you.',
        image: 'donate-time'
      }
    }

    def self.find_by_id(id)
      DEFAULTS[id]
    end

    def self.title_by_id(id)
      Base.find_by_id(id)[:title]
    end

    def self.description_by_id(id)
      Base.find_by_id(id)[:description]
    end

    def self.image_by_id(id)
      Base.find_by_id(id)[:image]
    end

    def self.count
      DEFAULTS.size
    end
  end
end
