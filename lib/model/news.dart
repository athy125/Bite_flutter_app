class Article {
  final String title,
      author,
      category,
      content,
      discription,
      featuredImage,
      authorPhoto;
  final int views;
  final DateTime time;

  Article({
    required this.title,
    required this.author,
    required this.authorPhoto,
    required this.category,
    required this.content,
    required this.discription,
    required this.featuredImage,
    required this.views,
    required this.time,
  });
}

List healthArticles =
    articleList.where((element) => element.category == "Health").toList();

List politicsArticles =
    articleList.where((element) => element.category == "Politics").toList();

List artArticles =
    articleList.where((element) => element.category == "Art").toList();

List scienceArticles =
    articleList.where((element) => element.category == "Science").toList();

List Religion =
    articleList.where((element) => element.category == "Religion").toList();


List<Article> articleList = [
  Article(
    title: 'Fiat Will Transition to All Electric Vehicles Starting in 2025',
    author: 'Mihir Raina',
    authorPhoto:
        'https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80',
    content: """
    Fiat plans to go all-electric within the next decade, starting by transitioning several vehicles to electric-only in 2025. And while the Italian brand already offers several electric vehicles, this radical change for the company will increase more as we approach the year 2030.

As we all know, electric vehicles, or future electric vehicle plans, are showing up everywhere, from the Cybertruck to Ford’s new F-150 Lightning. If we understand Fiat correctly, the company will continue its current rollout and conversion to electric vehicles, like the newer electric Fiat 500 city car, to other vehicles soon. Here’s a statement from Olivier François, Fiat’s CEO:

“It is our duty to bring to market electric cars that cost no more than those with an internal combustion engine, as soon as we can, in line with the falling costs of batteries. We are exploring the territory of sustainable mobility for all: this is our greatest project. Between 2025 and 2030, our product line-up will gradually become electric-only.”

     """,
    category: 'Technology',
    discription:
        ' Fiat plans to go all-electric within the next decade, starting by transitioning several vehicles to electric-only in 2025.',
    featuredImage:
        'https://cdn.motor1.com/images/mgl/erZJ8/s1/2020-fiat-500e-ev.jpg',
    views: 254,
    time: DateTime(2021, 07, 09, 1, 14),
  ),
  Article(
    content: """
      “There was a layer placed between us and pleasure,” Dr. Gail Saltz, a clinical associate professor of psychiatry at the NewYork-Presbyterian Hospital/Weill-Cornell Medical College, told Healthline.

“The absence of pain is pleasure,” she said. “And so many people have been constrained (the basis for much of the pain). The removal of that limitation — the unpleasant stimulus — is pleasure.”

Which means, she said, as we all re-enter normal life, you don’t have to summit Mount Everest on your first venture out in the world to feel that joy. With the way we’ve been locked down and layered away from the world, she said, just about anything triggers joy right now.

“For some people, food shopping is pleasure,” she said. “Looking at the fruits and vegetables set out for us, touching them without worry, when you can do it unrestricted, it is a pleasure for many.”

What happens chemically?

Saltz said that the body releases dopamine, which she calls the “reward hormone,” when it senses a new and pleasurable experience.


""",
    category: 'Health',
    title: 'Post-Pandemic Joy: Why It Feels So Good to Do Simple Things Again',
    author: "Moira Naik",
    authorPhoto:
        'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80',
    discription:
        'Experts say the happiness people are feeling as they venture out into the world is real, as the COVID-19 pandemic eases in the United States.',
    featuredImage:
        'https://images.unsplash.com/photo-1611153662496-c232240334a0?ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80',
    views: 758,
    time: DateTime(2021, 07, 07, 1, 27),
  ),
  Article(
    title:
        "Will COVID-19 Vaccines Give Lifelong Immunity to the Disease? What We Know",
    author: "George Citroner",
    authorPhoto:
        'https://images.unsplash.com/photo-1520409364224-63400afe26e5?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80',
    category: 'Health',
    content: """
      Whether we would develop immunity to COVID-19, or how long that would last if we did, has been a mystery since the early months of the pandemic.

However, two new studies are helping us better understand how our immune systems adapt to infection, and what that might mean for vaccination.

The studies, published in May, find that infection-induced immunity might last months or longer. But experts believe vaccination may lengthen the duration of this immunity.

Another important finding from both studies is that many people who have recovered from COVID-19 and later receive an mRNA vaccine (like the Moderna or Pfizer-BioNTech vaccine) may not need booster shots.

      """,
    discription:
        'Two recent studies have found that infection-induced immunity might last months.',
    featuredImage:
        "https://images.unsplash.com/photo-1608451643043-6a8eebc527ee?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80",
    views: 458,
    time: DateTime(2021, 07, 07, 1, 39),
  ),
  Article(
    title: "Can Too Much Work Increase Your Risk of Death? What to Know",
    author: "Mike Zhang",
    authorPhoto:
        'https://images.unsplash.com/photo-1501196354995-cbb51c65aaea?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80',
    category: "Health",
    content: """
      You probably won’t be surprised to learn that working too much can have negative effects on your health. But just how bad?

Well, a recent reportTrusted Source released by the World Health Organization and the International Labour Organization says that overwork led to 745,000 deaths from stroke and heart disease in 2016. To make matters worse, that’s an increase of 29 percent since the year 2000.

So protecting yourself from overwork can quite literally be a matter of life and death. During the pandemic, going to work was made more dangerous by a lethal virus for many in-person essential workers. But even for the work-from-home set, this is a serious problem.
from its worst impacts.
      """,
    discription:
        "A new report found that working over 55 hours is associated with an increased risk of death.",
    featuredImage:
        "https://images.unsplash.com/photo-1601581987809-a874a81309c9?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80",
    views: 218,
    time: DateTime(2021, 7, 2, 1, 45),
  ),
  Article(
    title:
        "Too Much TV in Your 40s, 50s Can Affect Brain Health: What You Can Do",
    author: "Sumit Shah",
    authorPhoto:
        'https://images.unsplash.com/photo-1557864691-fa78b6d486c2?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80',
    category: "Health",
    content: """
      The more television you watch in your 40s, 50s, and 60s, the greater your risk of brain health issues in later years.

That’s according to researchers who presented three new studies at the American Heart Association’s Epidemiology, Prevention, Lifestyle and Cardiometabolic Health Conference 2021 last week.

The studies used TV watching as a measure of sedentary behavior (i.e., time spent sitting). Brain health was later measured by participants answering questions about their watching habits, completing cognitive tests, and undergoing brain MRI scans.

TV watching was measured by how much content was consumed during leisure time:
      """,
    discription:
        "Researchers say people who watch more television in middle age have a higher risk of declining brain health in later years.",
    featuredImage:
        "https://i0.wp.com/post.healthline.com/wp-content/uploads/2021/05/Couple_Watching_TV_1296x728-header-1296x729.jpg?w=1575%20750w",
    views: 958,
    time: DateTime(2021, 07, 7, 1, 52),
  ),
  Article(
    title:
        "U.S. officials up pressure on firms, foreign adversaries over cyberattacks",
    author: "Reuters Staff",
    authorPhoto:
        'https://images.unsplash.com/photo-1534008757030-27299c4371b6?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80',
    category: "politics",
    content: """
      U.S. officials on Sunday ratcheted up pressure on companies and foreign adversaries to fight cybercriminals, and said President Joe Biden is considering all options, including a military response, to counter the growing threat.
      The Biden administration is looking at “all of the options,” to defend the country against ransomware criminals, U.S. Commerce Secretary Gina Raimondo said in an interview on Sunday, when asked if military action was being considered.

Raimondo did not detail what those options could look like, but said the topic will be on the agenda when the president meets with Russian President Vladimir Putin this month. The rising threat of cyberattacks has pushed the Biden administration into a more aggressive stance against Russia, which is thought to be harboring some of the perpetrators.

“We’re not taking anything off the table as we think about possible repercussions, consequences or retaliation,” Raimondo said.

      """,
    discription:
        "U.S. officials on Sunday ratcheted up pressure on companies and foreign adversaries to fight cybercriminals.",
    featuredImage:
        "https://images.unsplash.com/photo-1556046905-2508233aea86?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80",
    views: 754,
    time: DateTime(2021, 07, 8, 10, 2),
  ),
  Article(
    title: 'Biden calls for nations to boost their economies',
    author: 'Rawal Suresh',
    authorPhoto:
        "https://images.unsplash.com/photo-1480455624313-e29b44bbfde1?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80",
    category: 'Politics',
    discription:
        "The deal struck on tax understandably grabbed most of the attention at the G7 Finance Ministers' meeting, ahead of this week's Leaders' Summit in Cornwall.",
    content: """
      This should transform the international tax treatment of multinationals, tax havens and low tax jurisdictions.

But perhaps the most important decision right now, across the world, is how to manage the withdrawal of the massive pandemic economic support packages.

And that is why the economic intervention of the US at this meeting and at the upcoming Cornwall summit is of considerable importance.

The message from Treasury Secretary Janet Yellen here in London - which will be echoed by US President Joe Biden in Cornwall - is that all G7 nations, including the UK, should not even be talking about withdrawal of support.

"G7 economies have the fiscal space to speed up their recoveries to not only reach pre-Covid levels of GDP, but also to support a return to pre-pandemic growth paths," said Secretary Yellen in a speech on Saturday.

      """,
    featuredImage:
        "https://ichef.bbci.co.uk/news/976/cpsprodpb/0926/production/_118824320_joe-biden1.jpg",
    views: 461,
    time: DateTime(2021, 7, 8, 11, 29),
  ),
  Article(
    title: "Why Kim Jong-un is waging war on slang, jeans and foreign films",
    author: "Mihika Joshi",
    authorPhoto:
        "https://images.unsplash.com/photo-1522767131594-6b7e96848fba?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80",
    category: "Politics",
    content: """
      Yoon Mi-so says she was 11 when she first saw a man executed for being caught with a South Korean drama.

His entire neighbourhood was ordered to watch.

"If you didn't, it would be classed as treason," she told the BBC from her home in Seoul.

The North Korean guards were making sure everyone knew the penalty for smuggling illicit videos was death.

      """,
    discription:
        "North Korea has recently introduced a sweeping new law which seeks to stamp out any kind of foreign influence - harshly punishing anyone caught with foreign films, clothing or even using slang. But why?",
    featuredImage:
        "https://ichef.bbci.co.uk/news/976/cpsprodpb/8EB6/production/_118643563_nk_foreign_media_law_2_illustration.jpg",
    views: 752,
    time: DateTime(2021, 7, 8, 19, 23),
  ),
  Article(
    title: "Capitol riot: Democrats set up committee to probe 6 January attack",
    author: "BBC",
    authorPhoto:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/6/62/BBC_News_2019.svg/1200px-BBC_News_2019.svg.png',
    category: "Politics",
    content: """
      Mrs Pelosi said the Democratic-led committee would aim to "establish the truth of that day and ensure that an attack of that kind cannot happen".

The move comes after Senate Republicans blocked a bill to establish a bipartisan commission into the attack.

Allies of former President Donald Trump said a commission was not necessary.

His supporters stormed Congress in Washington DC on 6 January in a failed bid to overturn the certification of Democratic President Joe Biden's election victory in November.

      """,
    discription:
        "Democratic House Speaker Nancy Pelosi has announced the creation of a committee to investigate the Capitol Hill riot in January this year.",
    featuredImage:
        "https://ichef.bbci.co.uk/news/976/cpsprodpb/B228/production/_119080654_gettyimages-1230455457-594x594.jpg",
    views: 858,
    time: DateTime(2021, 07, 08, 23, 33),
  ),
  Article(
    title:
        "1,800-Year-Old Statue Found in Ancient “City of the Mother Goddess” in Turkey",
    author: "Jesse Holth",
    authorPhoto:
        'https://images.unsplash.com/photo-1525181737312-adca155347de?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80',
    category: "Art",
    content: """
      Archaeologists in Turkey have uncovered an 1,800-year-old statue in the ancient city of Metropolis, known as “City of the Mother Goddess.” The marble figure of a robed woman standing on a pedestal is missing a head and both arms—which were likely attached separately—but is otherwise well preserved. The Turkish Culture and Tourism Ministry’s Department of Excavations announced the news earlier this month, along with a video of their excavation work and views of the statue.

The city of Metropolis, where the statue was discovered, is located in the Torbali region of Turkey’s İzmir Province near the western coast of Turkey, between the ancient cities of Ephesus and Smyrna (modern-day İzmir). It was first settled in the Neolithic period (roughly 10,000 B.C.E. through 1900 B.C.E.), with later inhabitants arriving during the Classical, Hellenistic, Roman, Byzantine, and Ottoman eras.

      """,
    discription:
        "Archaeologists in Turkey have uncovered an 1,800-year-old statue in the ancient city of Metropolis.",
    featuredImage:
        "https://www.artnews.com/wp-content/uploads/2021/06/Screen-Shot-2021-06-23-at-3.42.55-PM.png",
    views: 568,
    time: DateTime(2021, 07, 08, 23, 41),
  ),
  Article(
    title:
        "Artificial Intelligence Restores Mutilated Rembrandt Painting ‘The Night Watch’",
    author: "Shanti Deshmukh",
    authorPhoto:
        'https://images.unsplash.com/photo-1523264897137-4cb31c04eaec?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80',
    category: "Art",
    content: """
      One of Rembrandt’s finest works, Militia Company of District II under the Command of Captain Frans Banninck Cocq (better known as The Night Watch) from 1642, is a prime representation of Dutch Golden Age painting. But the painting was greatly disfigured after the artist’s death, when it was moved from its original location at the Arquebusiers Guild Hall to Amsterdam’s City Hall in 1715. City officials wanted to place it in a gallery between two doors, but the painting was too big to fit. Instead of finding another location, they cut large panels from the sides as well as some sections from the top and bottom. The fragments were lost after removal.

      Now, centuries later, the painting  has been made complete through the use of artificial intelligence. The Rijksmuseum in the Netherlands has owned The Night Watch since it opened in 1885 and considers it one of the best-known paintings in its collection. In 2019, the museum embarked on a multi-year, multi-million-dollar restoration project, referred to as Operation Night Watch, to recover the painting. The effort marks the 26th restoration of the work over the span of its history.

In the beginning, restoring The Night Watch to its original size hadn’t been considered until the eminent Rembrandt scholar Erst van der Wetering suggested it in a letter to the museum, noting that the composition would change dramatically. The museum tapped its senior scientist, Rob Erdmann, to head the effort using three primary tools: the remaining preserved section of the original painting, a 17th-century copy of the original painting attributed to Gerrit Lundens that had been made before the cuts, and AI technology. 
      """,
    discription:
        "Now, centuries later, the painting  has been made complete through the use of artificial intelligence.",
    featuredImage:
        "https://www.artnews.com/wp-content/uploads/2021/06/Reinier-Gerritsen-proefhanging-e1624469161595.jpg",
    views: 784,
    time: DateTime(2021, 07, 08, 10, 47),
  ),
  Article(
    title:
        "For some dinosaurs, the Arctic may have been a great place to raise a family",
    author: "Nikk Waghmare",
    authorPhoto:
        "https://images.unsplash.com/photo-1463453091185-61582044d556?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80",
    category: "Science",
    content: """
      Dinosaurs didn’t just summer in the high Arctic; they may have lived there year-round, new fossil evidence suggests.

Hundreds of bones and teeth found along the Colville River in northern Alaska belonged to dinosaur hatchlings, researchers say. The remains, which fell from outcroppings of the Prince Creek Formation, represent seven dinosaur families including tyrannosaurs, duck-billed hadrosaurs and horned and frilled ceratopsids.

“These are the northernmost [non-avian] dinosaurs that we know of,” says paleontologist Patrick Druckenmiller of the University of Alaska Museum of the North in Fairbanks. And now it’s clear they’re not just migrating into polar latitudes, he says. “They’re actually nesting and laying and incubating eggs … practically at the North Pole.”


      """,
    discription:
        "Fossil baby teeth and bones hint that some dinosaurs reared their young near the North Pole",
    featuredImage:
        "https://www.sciencenews.org/wp-content/uploads/2021/06/062321_NO_arctic-dinos_feat.jpg",
    views: 446,
    time: DateTime(2021, 07, 08, 5, 16),
  ),
  Article(
    title:
        "Any aliens orbiting these 2,000 stars could spot Earth crossing the sun",
    author: "Archana Ranade",
    authorPhoto:
        "https://images.unsplash.com/photo-1526569188684-0bb8b5a4a2ae?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80",
    category: "Science",
    content: """
      Astronomers look for distant planets by watching for the shadow the worlds cast when passing between their star and Earth. If any aliens are searching for other intelligent life, they could spot us using the same trick.

Now, scientists have identified 1,715 star systems whose hypothetical inhabitants could have seen Earth cross in front of the sun sometime in the last 5,000 years. Another 319 stars will come into the right positions for spotting Earth in the next 5,000 years, astrophysicist Jackie Faherty and astronomer Lisa Kaltenegger report in the June 23 Nature.

Those 2,034 stars had or will have “the front row seat to finding Earth as a transiting planet,” says Faherty, of the American Museum of Natural History in New York City.

      """,
    discription:
        "They would find the planet the way astronomers here detect exoplanets",
    featuredImage:
        "https://www.sciencenews.org/wp-content/uploads/2021/06/062221_lg_earth-from-space_feat.jpg",
    views: 946,
    time: DateTime(2021, 07, 08, 15, 6),
  ),
];

Article newsOfTheDay = Article(
  title: "Jeff Bezos and brother to fly to space in Blue Origin flight",
  author: "Atharva Joshi",
  authorPhoto:
      'https://pbs.twimg.com/profile_images/982212839753449472/RTPMqTS4_400x400.jpg',
  category: "Technology",
  content: """
In an Instagram post, Mr Bezos said space flight was something he had wanted to do "all my life".

Blue Origin is also auctioning off a seat in the capsule, for someone who will join the pair on the inaugural manned flight.

Jeff Bezos is one of the world's richest people.

He has a net worth of \$186.2bn (£131.5bn), according to Forbes magazine.

""",
  discription:
      "The Amazon founder Jeff Bezos has said he will fly to space with his brother on the first human flight launched by his space company, Blue Origin.",
  featuredImage:
      "https://ichef.bbci.co.uk/news/976/cpsprodpb/6EE8/production/_118829382_067148600.jpg",
  views: 15,
  time: DateTime(2021, 7, 8, 19, 41),
);
