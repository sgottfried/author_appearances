class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    return true if RUBYMOTION_ENV == 'test'
    
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    authors_view_controller = AuthorsViewController.alloc.initWithAuthors(['Ernest Hemingway', 
                                                                          'Cassandra Clare',
                                                                          'Stephen King',
                                                                          'Karen Kingsbury',
                                                                          'Walter Isaacson',
                                                                          'Jude Deveraux'
                                                                          ])

    navigation_controller = UINavigationController.alloc.initWithRootViewController(authors_view_controller)
    @window.rootViewController = navigation_controller
    @window.makeKeyAndVisible
  end
end
