class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    return true if RUBYMOTION_ENV == 'test'
    
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    authors_view_controller = AuthorsViewController.alloc.init
    navigation_controller = UINavigationController.alloc.initWithRootViewController(authors_view_controller)
    @window.rootViewController = navigation_controller
    @window.makeKeyAndVisible
  end
end
