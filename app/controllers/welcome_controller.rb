class WelcomeController < ApplicationController

  def index
    @greeting = "Welcome to the amazing practice webapp built with Ruby on Rails. Please select from the list above, what page you want. Pages have been linked for your convenience. All pages are served locally from port 3000."
    @more_info = "This text is stored in a variable in welcome_controller.rb (@more_info)"
    # render :index
  end

  def lorem
    stdlor = 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'
    cuplor = 'Topping bear claw dragée muffin muffin gummies. Candy chocolate cake sweet roll jujubes powder sugar plum danish jelly beans. Gingerbread soufflé bear claw ice cream marshmallow toffee tootsie roll sweet. Candy canes cake tootsie roll carrot cake candy canes donut bonbon pie gingerbread. Pudding pie dragée candy cookie cheesecake apple pie tiramisu. Jelly dragée ice cream. Chocolate bar lemon drops biscuit wafer chocolate bar. Gingerbread pudding brownie chocolate bear claw tiramisu fruitcake tootsie roll chocolate cake. Marzipan donut apple pie. Icing chocolate jelly cake chocolate cake. Toffee icing chocolate cake pudding liquorice sweet roll ice cream. Muffin cupcake dessert brownie cheesecake lemon drops.'
    hiplor = 'Craft beer pop-up photo booth, try-hard bicycle rights hashtag waistcoat gentrify vegan shabby chic dreamcatcher kale chips put a bird on it. Wolf bushwick iPhone, 8-bit man braid cornhole artisan sriracha paleo tote bag readymade blue bottle. Kogi venmo gentrify, skateboard vice kombucha franzen. Migas venmo banh mi, sustainable normcore messenger bag kogi roof party. Polaroid paleo chillwave lo-fi locavore godard. Drinking vinegar fixie shabby chic helvetica fanny pack venmo. Master cleanse bicycle rights readymade banjo, occupy squid art party.'

    if params[:type] == 'standard'
      @dummy_txt = stdlor
    elsif params[:type] == 'cupcake'
      @dummy_txt = cuplor
    elsif params[:type] == 'hipster'
      @dummy_txt = hiplor
    else
      "No Ipsum for You!"
    end
    render :lorem
  end

  def show
    @greeting = "Hello #{params[:param]}!"
    # render :hello_x
    # render :index
  end

end
