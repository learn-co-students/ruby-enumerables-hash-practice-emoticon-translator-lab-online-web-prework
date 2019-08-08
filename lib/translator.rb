require "emoticons.yml"
def load_library

end

def get_japanese_emoticon
when "when an element from get_emoticon is used it will print the corresponding element from get_meaning" do
    :get_emoticon => {
      :angel => ["O:)"]
      :angry => [">:("]
      :bored => [":O"]
      :confused => ["%)"]
      :embarrased => [":$"]
      :fish => ["><>"]
      :glasses => ["8D"]
      :grinning => ["=D"]
      :happy => [":)"]
      :kiss => [":*"]
      :sad => [":'("]
      :surprised => [":o"]
      :wink => [";)"]
    },
    :get_meaning => {
      :angel => ["☜(⌒▽⌒)☞"]
      :angry => ["ヽ(ｏ`皿′ｏ)ﾉ"]
      :bored => ["(ΘεΘ;)"]
      :confused => ["(゜.゜)"]
      :embarrased => ["(#^.^#)"]
      :fish => [">゜))))彡"]
      :glasses => ["(^0_0^)"]
      :grinning => ["(￣ー￣)"]
      :happy => ["(＾ｖ＾)"]
      :kiss => ["(*^3^)/~☆"]
      :sad => ["(Ｔ▽Ｔ)"]
      :surprised => ["o_O"]
      :wink => [ "(^_-)"]
    }
end

def get_english_meaning
when "when an element from get_meaning is used it will print the corresponding element from get_emoticon" do
  :get_meaning => {
    :angel => ["☜(⌒▽⌒)☞"]
    :angry => ["ヽ(ｏ`皿′ｏ)ﾉ"]
    :bored => ["(ΘεΘ;)"]
    :confused => ["(゜.゜)"]
    :embarrased => ["(#^.^#)"]
    :fish => [">゜))))彡"]
    :glasses => ["(^0_0^)"]
    :grinning => ["(￣ー￣)"]
    :happy => ["(＾ｖ＾)"]
    :kiss => ["(*^3^)/~☆"]
    :sad => ["(Ｔ▽Ｔ)"]
    :surprised => ["o_O"]
    :wink => [ "(^_-)"]
  },
  :get_emoticon => {
    :angel => ["O:)"]
    :angry => [">:("]
    :bored => [":O"]
    :confused => ["%)"]
    :embarrased => [":$"]
    :fish => ["><>"]
    :glasses => ["8D"]
    :grinning => ["=D"]
    :happy => [":)"]
    :kiss => [":*"]
    :sad => [":'("]
    :surprised => [":o"]
    :wink => [";)"]
  }
end
