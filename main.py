import tkinter as tk
from calendar import Calendar
from tkinter import messagebox

import pymysql
from tkinter import *



class Musiclly():

    #Constructor
    def __init__(self, root,username,password):
        self.root = root
        self.username= username
        self.password= password
        screen_width = root.winfo_screenwidth()
        screen_height = root.winfo_screenheight()
        width=800
        height=600
        x = (screen_width / 2) - (width / 2)
        y = (screen_height / 2) - (height / 2)
        root.geometry( '%dx%d+%d+%d' % (width, height, x, y) )
        self.root.title( "Database Connection Page" )
        self.root.attributes( '-topmost', True )
        '''
        frame_image = Frame( self.root, borderwidth=2, bg="white", relief=SUNKEN)
        frame_image.place( x=10,y=10,width=500,height=500)
        frame_image.picture = PhotoImage( file="Musicly.png" )
        frame_image.label = Label( frame_image, image=frame_image.picture )
        
        
        canvas = Canvas(
            self.root,
            width=500,
            height=500
        )
        canvas.pack()
        img = PhotoImage( file='Musicly.png' )
        canvas.create_image(
            10,
            10,
            anchor=NW,
            image=img
        )
        # Add image file
        bg = PhotoImage( file="musiclybig.jpg" )
        # Show image using label
        label1 = Label( root, image=bg )
        label1.place( x=0, y=0 )
        '''
        self.root.configure(background = 'white' )
        self.root.tk.call( 'wm', 'iconphoto', self.root._w, PhotoImage( file="Musicly.png" ) )
        photo = PhotoImage( file="Musicly.png" )
        frame1 = Frame( root, highlightbackground="black", highlightthickness=2 )
        frame1.pack( padx=20, pady=20 )
        label=tk.Label(root,text="Welcome To Musicly!!",font="Calibri, 22",background='light blue')
        label.pack(ipadx=30,ipady=30)
        #label.place(x=10,y=10,width=400)
        submitbtn = tk.Button( root, text="Connect to DataBase",
                               bg='light blue', command=lambda: [self.mainWindow(), self.submitact()] )
        submitbtn.place( x=250, y=335, width=150 ,height=50)

        submitbtne = tk.Button( root, text="Exit",
                                bg='light blue', command=exit )
        submitbtne.place( x=450, y=335, width=100 ,height=50)




    # Main SignIn and SignUp window
    def mainWindow(self):
        mainWindow = Toplevel( root )
        mainWindow.title( "Search Songs" )
        screen_width = root.winfo_screenwidth()
        screen_height = root.winfo_screenheight()
        width = 800
        height = 600
        x = (screen_width / 2) - (width / 2)
        y = (screen_height / 2) - (height / 2)
        mainWindow.geometry( '%dx%d+%d+%d' % (width, height, x, y) )
        root.attributes( '-alpha', 0.00 )
        Label( mainWindow, font="Calibri, 12" ).pack()
        mainWindow.configure( background='white' )
        mainWindow.tk.call( 'wm', 'iconphoto', mainWindow._w, PhotoImage( file="Musicly.png" ) )
        frame1 = Frame( mainWindow, highlightbackground="black", highlightthickness=2 )
        frame1.pack( padx=20, pady=20 )
        label = tk.Label( mainWindow, text="          Musicly!!         ", font="Calibri, 22", background='light blue' )
        label.pack( ipadx=30, ipady=30 )
        signin = tk.Button( mainWindow, text="SignIn",
                            bg='light blue', command=lambda: [self.logIn(), self.submitact(),mainWindow.withdraw()] )
        signin.place( x=300, y=300, width=200, height=50 )

        signup = tk.Button( mainWindow, text="SignUp",
                            bg='light blue', command=lambda: [self.userInfo(), self.submitact(), mainWindow.withdraw()] )
        signup.place( x=300, y=400, width=200, height=50 )

        submitbtne = tk.Button( mainWindow, text="Exit",
                                bg='light blue', command=exit )
        submitbtne.place( x=300, y=500, width=200, height=50 )




    # Database login credentials
    def submitact(self):
        user = self.username
        passw = self.password

        print( f"The name entered by you is {user} {passw}" )

        self.logintodb( user, passw )
        # userInfo(user, passw)


    # To make database connection
    def logintodb(self,user, passw, db=None):
        # If password is enetered by the
        # user

        if passw:
            conn = pymysql.connect( host='localhost',
                                    user=user,
                                    password=passw,
                                    db='musicly' )
            cursor = conn.cursor()

        # If no password is enetered by the
        # user
        else:
            conn = pymysql.connect( host='localhost',
                                    user=user,
                                    db='musicly' )
            cursor = conn.cursor()
            print( "Connected to Database" )



    # Window to log in for existing user
    def logIn(self):
        logIn = Toplevel( root )
        logIn.title( "LogIn" )

        screen_width = root.winfo_screenwidth()
        screen_height = root.winfo_screenheight()
        width = 800
        height = 600
        x = (screen_width / 2) - (width / 2)
        y = (screen_height / 2) - (height / 2)
        logIn.geometry( '%dx%d+%d+%d' % (width, height, x, y) )
        root.attributes( '-alpha', 0.00 )

        Label( logIn, font="Calibri, 12" ).pack()
        logIn.configure( background='white' )
        # Keep the toplevel window in front of the root window
        logIn.wm_transient( root )
        frame1 = Frame( logIn, highlightbackground="black", highlightthickness=2 )
        frame1.pack( padx=20, pady=20 )
        label = tk.Label( logIn, text="          Musicly!!         ", font="Calibri, 22", background='light blue' )
        label.pack( ipadx=30, ipady=30 )

        lblsecrow = tk.Label( logIn, text="UserName -" )
        logIn.tk.call( 'wm', 'iconphoto', logIn._w, PhotoImage( file="Musicly.png" ) )
        lblsecrow.place( x=250, y=300 )

        Username = tk.Entry( logIn, width=35 )
        Username.place( x=400, y=300, width=100 )
        username=Username

        lblsecrow = tk.Label( logIn, text="Password -" )
        lblsecrow.place( x=250, y=350 )

        Password = tk.Entry( logIn, width=35, show="*" )
        Password.place( x=400, y=350, width=100 )
        password=Password

        next1 = tk.Button( logIn, text="Next",
                           bg='light blue', command=lambda: [self.userDetailsCheck(username,password),
                                                            logIn.withdraw()] )
        next1.place( x=250, y=450, width=100 )
        exit1 = tk.Button( logIn, text="Exit",
                           bg='light blue', command=exit )
        exit1.place( x=400, y=450, width=100 )




    #To check username and password exists in the database or not.
    def userDetailsCheck(self,username,password):
        username = username.get()
        password = password.get()
        conn = pymysql.connect( host='localhost',
                                user=self.username,
                                password=self.password,
                                db='musicly' )
        cursor = conn.cursor()
        cur1 = conn.cursor()
        cursor2 = conn.cursor()
        str1 = 'USE musicly; '
        cur1.execute( str1 )
        str3 = """SELECT user_name from users 
                  WHERE user_name = '"""+ username + "' AND password = '"+ password + "' ; "
        str4 = """SELECT password from users 
                  WHERE user_name = '"""+ username + "' AND password = '"+ password + "' ; "
        cursor.execute( str3 )
        cursor2.execute(str4)

        conn.commit()
        row1= cursor.fetchall()
        row2 = cursor2.fetchall()

        if((row1 != ())  and (row2 != ())):
            self.openNewWindowReturn(username, password)
            self.submitact()
        else:
            messagebox.showerror( 'Invalid Input','Invalid Username or Password!!')
            exit()





    # New Window for Options

    def openNewWindow(self,username,password):
        # Toplevel object which will
        # be treated as a new window
        newWindow = Toplevel( root )
        username=username.get()
        password=password.get()
        # sets the title of the
        # Toplevel widget
        newWindow.title( "Options" )
        screen_width = root.winfo_screenwidth()
        screen_height = root.winfo_screenheight()
        width = 800
        height = 600
        x = (screen_width / 2) - (width / 2)
        y = (screen_height / 2) - (height / 2)
        newWindow.geometry( '%dx%d+%d+%d' % (width, height, x, y) )
        root.attributes( '-alpha', 0.00 )

        Label( newWindow, font="Calibri, 12" ).pack()
        newWindow.configure( background='white' )
        # Keep the toplevel window in front of the root window
        newWindow.wm_transient( root )
        frame1 = Frame( newWindow, highlightbackground="black", highlightthickness=2 )
        frame1.pack( padx=20, pady=20 )
        label = tk.Label( newWindow, text="          Musicly!!         ", font="Calibri, 22", background='light blue' )
        label.pack( ipadx=30, ipady=30 )
        newWindow.tk.call( 'wm', 'iconphoto', newWindow._w, PhotoImage( file="Musicly.png" ) )
        submitbtn1 = tk.Button( newWindow, text="Song Info",
                                bg='light blue', command=lambda: [self.songInfo(username,password), self.submitact(),
                                                                  newWindow.withdraw()] )
        submitbtn1.place( x=150, y=250, width=120 )

        submitbtn2 = tk.Button( newWindow, text="Artist Info",
                                bg='light blue', command=lambda: [self.artistInfo(username,password), self.submitact(),
                                                                  newWindow.withdraw()] )
        submitbtn2.place( x=350, y=250, width=120 )

        userInfo = tk.Button( newWindow, text="User Info",
                              bg='light blue',
                              command=lambda: [self.userInfoFetch( username, password ), self.submitact(),
                                               newWindow.withdraw()] )
        userInfo.place( x=550, y=250, width=120 )

        submitbtn3 = tk.Button( newWindow, text="Modify Song Review",
                                bg='light blue', command=lambda: [self.modifySongReview(username,password), self.submitact(),
                                                                  newWindow.withdraw()] )
        submitbtn3.place( x=150, y=350, width=120 )


        submitbtn4 = tk.Button( newWindow, text="Modify Artist Review",
                                bg='light blue', command=lambda: [self.modifyArtistReview(username,password), self.submitact(),
                                                                  newWindow.withdraw()] )
        submitbtn4.place( x=350, y=350, width=120 )
        submitbtn5 = tk.Button( newWindow, text="Modify Song Rating",
                                bg='light blue', command=lambda: [self.modifySongRating(username,password), self.submitact(),
                                                                  newWindow.withdraw()] )
        submitbtn5.place( x=550, y=350, width=120 )
        submitbtn6 = tk.Button( newWindow, text="Modify Artist Rating",
                                bg='light blue', command=lambda: [self.modifyArtistRating(username,password), self.submitact(),
                                                                  newWindow.withdraw()] )
        submitbtn6.place( x=550, y=450, width=120 )

        submitbtn7 = tk.Button( newWindow, text="Search Songs",
                                bg='light blue', command=lambda: [self.searchSongs(username,password), self.submitact(),
                                                                  newWindow.withdraw()] )
        submitbtn7.place( x=150, y=450, width=120 )

        submitbtn8 = tk.Button( newWindow, text="Exit",
                                bg='light blue', command=exit )
        submitbtn8.place( x=350, y=500, width=120, height= 50 )


    # Options window return
    def openNewWindowReturn(self,username,password):
        newWindow = Toplevel( root )
        username = username
        password = password
        # sets the title of the
        # Toplevel widget
        newWindow.title( "Options" )
        screen_width = root.winfo_screenwidth()
        screen_height = root.winfo_screenheight()
        width = 800
        height = 600
        x = (screen_width / 2) - (width / 2)
        y = (screen_height / 2) - (height / 2)
        newWindow.geometry( '%dx%d+%d+%d' % (width, height, x, y) )
        root.attributes( '-alpha', 0.00 )

        Label( newWindow, font="Calibri, 12" ).pack()
        newWindow.configure( background='white' )
        # Keep the toplevel window in front of the root window
        newWindow.wm_transient( root )
        frame1 = Frame( newWindow, highlightbackground="black", highlightthickness=2 )
        frame1.pack( padx=20, pady=20 )
        label = tk.Label( newWindow, text="          Musicly!!         ", font="Calibri, 22", background='light blue' )
        label.pack( ipadx=30, ipady=30 )
        newWindow.tk.call( 'wm', 'iconphoto', newWindow._w, PhotoImage( file="Musicly.png" ) )
        submitbtn1 = tk.Button( newWindow, text="Song Info",
                                bg='light blue', command=lambda: [self.songInfo( username, password ), self.submitact(),
                                                                  newWindow.withdraw()] )
        submitbtn1.place( x=150, y=250, width=120 )

        submitbtn2 = tk.Button( newWindow, text="Artist Info",
                                bg='light blue',
                                command=lambda: [self.artistInfo( username, password ), self.submitact(),
                                                 newWindow.withdraw()] )
        submitbtn2.place( x=350, y=250, width=120 )

        userInfo = tk.Button( newWindow, text="User Info",
                              bg='light blue',
                              command=lambda: [self.userInfoFetch( username, password ), self.submitact(),
                                               newWindow.withdraw()] )
        userInfo.place( x=550, y=250, width=120 )

        submitbtn3 = tk.Button( newWindow, text="Modify Song Review",
                                bg='light blue',
                                command=lambda: [self.modifySongReview( username, password ), self.submitact(),
                                                 newWindow.withdraw()] )
        submitbtn3.place( x=150, y=350, width=120 )

        submitbtn4 = tk.Button( newWindow, text="Modify Artist Review",
                                bg='light blue',
                                command=lambda: [self.modifyArtistReview( username, password ), self.submitact(),
                                                 newWindow.withdraw()] )
        submitbtn4.place( x=350, y=350, width=120 )
        submitbtn5 = tk.Button( newWindow, text="Modify Song Rating",
                                bg='light blue',
                                command=lambda: [self.modifySongRating( username, password ), self.submitact(),
                                                 newWindow.withdraw()] )
        submitbtn5.place( x=550, y=350, width=120 )
        submitbtn6 = tk.Button( newWindow, text="Modify Artist Rating",
                                bg='light blue',
                                command=lambda: [self.modifyArtistRating( username, password ), self.submitact(),
                                                 newWindow.withdraw()] )
        submitbtn6.place( x=550, y=450, width=120 )

        submitbtn7 = tk.Button( newWindow, text="Search Songs",
                                bg='light blue',
                                command=lambda: [self.searchSongs( username, password ), self.submitact(),
                                                 newWindow.withdraw()] )
        submitbtn7.place( x=150, y=450, width=120 )

        submitbtn8 = tk.Button( newWindow, text="Exit",
                                bg='light blue', command=exit )
        submitbtn8.place( x=350, y=500, width=120, height=50 )

    #User Info Fetch 1
    def userInfoFetch(self,username,password):
        username = username
        password = password
        userInfoFetch = Toplevel( root )
        userInfoFetch.title( "User Information" )
        frame1 = Frame( userInfoFetch, highlightbackground="black", highlightthickness=2 )
        frame1.pack( padx=10, pady=10 )
        label1 = tk.Label( userInfoFetch, text="          Musicly!!         ", font="Calibri, 22",
                           background='light blue' )
        label1.pack( ipadx=30, ipady=30 )
        Label( userInfoFetch, font="Calibri, 12" ).pack()
        screen_width = root.winfo_screenwidth()
        screen_height = root.winfo_screenheight()
        width = 800
        height = 600
        x = (screen_width / 2) - (width / 2)
        y = (screen_height / 2) - (height / 2)
        userInfoFetch.geometry( '%dx%d+%d+%d' % (width, height, x, y) )
        userInfoFetch.configure( background='white' )
        userInfoFetch.tk.call( 'wm', 'iconphoto', userInfoFetch._w, PhotoImage( file="Musicly.png" ) )
        root.attributes( '-alpha', 0.00 )

        conn = pymysql.connect( host='localhost',
                                user=self.username,
                                password=self.password,
                                db='musicly' )
        cursor = conn.cursor()
        cur1 = conn.cursor()
        str1 = 'USE musicly; '
        cur1.execute( str1 )
        str = "call userDetailsFetch('"+username+"','" +password+ "');"
        cursor.execute( str )
        conn.commit()
        rows = cursor.fetchall()
        list_name = []
        list_Member = []
        list_udob = []
        list_phoneNum = []
        list_favSong = []
        list_favArt = []
        for row in rows:
            list_name.append( row[0] )
            list_Member.append( row[1] )
            list_udob.append( row[2] )
            list_phoneNum.append( row[3] )
            list_favSong.append( row[4] )
            list_favArt.append( row[5] )
        label = tk.Label( userInfoFetch, text="User Name: " )
        label.place( x=250, y=200 )
        label = tk.Label( userInfoFetch, text=list_name )
        label.place( x=400, y=200 )
        label = tk.Label( userInfoFetch, text="Membership Status: " )
        label.place( x=250, y=250 )
        label = tk.Label( userInfoFetch, text=list_Member )
        label.place( x=400, y=250 )
        label = tk.Label( userInfoFetch, text="User DOB: " )
        label.place( x=250, y=300 )
        label = tk.Label( userInfoFetch, text=list_udob )
        label.place( x=400, y=300 )
        label = tk.Label( userInfoFetch, text="Phone Num: " )
        label.place( x=250, y=350 )
        label = tk.Label( userInfoFetch, text=list_phoneNum )
        label.place( x=400, y=350 )

        label = tk.Label( userInfoFetch, text="Fav Song: " )
        label.place( x=250, y=400 )
        label = tk.Label( userInfoFetch, text=list_favSong )
        label.place( x=400, y=400 )

        label = tk.Label( userInfoFetch, text="Fav Artist: " )
        label.place( x=250, y=450 )
        label = tk.Label( userInfoFetch, text=list_favArt )
        label.place( x=400, y=450 )
        exit2 = tk.Button( userInfoFetch, text="Exit",
                           bg='light blue', command=exit )
        exit2.place( x=250, y=500, width=100 )

        mainmenu = tk.Button( userInfoFetch, text="Home",
                              bg='light blue',
                              command=lambda: [self.openNewWindowReturn( username, password ), self.submitact(),
                                               userInfoFetch.withdraw()] )
        mainmenu.place( x=400, y=500, width=100 )




    def searchSongs(self,username,password):
        username= username
        password= password
        searchSongs = Toplevel( root )
        searchSongs.title( "Search Songs" )
        Label( searchSongs, font="Calibri, 12" ).pack()
        screen_width = root.winfo_screenwidth()
        screen_height = root.winfo_screenheight()
        width = 800
        height = 600
        x = (screen_width / 2) - (width / 2)
        y = (screen_height / 2) - (height / 2)
        searchSongs.geometry( '%dx%d+%d+%d' % (width, height, x, y) )
        root.attributes( '-alpha', 0.00 )

        # Keep the toplevel window in front of the root window
        searchSongs.wm_transient( root )
        searchSongs.configure( background='white' )
        searchSongs.tk.call( 'wm', 'iconphoto', searchSongs._w, PhotoImage( file="Musicly.png" ) )
        frame1 = Frame( searchSongs, highlightbackground="black", highlightthickness=2 )
        frame1.pack( padx=20, pady=20 )
        label = tk.Label( searchSongs, text="          Musicly!!         ", font="Calibri, 22", background='light blue' )
        label.pack( ipadx=30, ipady=30 )

        artist = tk.Button( searchSongs, text="Artist",
                            bg='light blue', command=lambda: [self.searchSongArtistName(username,password), self.submitact(),
                                                              searchSongs.withdraw()] )
        artist.place( x=350, y=200, width=100 )

        genre = tk.Button( searchSongs, text="Genre",
                           bg='light blue', command=lambda: [self.searchSongGenreName(username,password), self.submitact(),
                                                             searchSongs.withdraw()] )
        genre.place( x=350, y=250, width=100 )

        language = tk.Button( searchSongs, text="Language",
                              bg='light blue', command=lambda: [self.searchSonglanguageName(username,password), self.submitact(),
                                                             searchSongs.withdraw()] )
        language.place( x=350, y=300, width=100 )

        mood = tk.Button( searchSongs, text="Mood",
                          bg='light blue', command=lambda: [self.searchSongMoodName(username,password), self.submitact(),
                                                             searchSongs.withdraw()] )
        mood.place( x=350, y=350, width=100 )

        exit5 = tk.Button( searchSongs, text="Exit",
                           bg='light blue', command=exit )
        exit5.place( x=350, y=400, width=100 )

        mainmenu = tk.Button( searchSongs, text="Home",
                              bg='light blue', command=lambda: [self.openNewWindowReturn(username,password), self.submitact(),
                                                                searchSongs.withdraw()] )
        mainmenu.place( x=350, y=450, width=100 )




    #Search Song By Artist Name1
    def searchSongArtistName(self,username,password):
        username = username
        password = password
        searchSongs = Toplevel( root )
        searchSongs.title( "Song list" )
        Label( searchSongs, font="Calibri, 12" ).pack()
        screen_width = root.winfo_screenwidth()
        screen_height = root.winfo_screenheight()
        width = 800
        height = 600
        x = (screen_width / 2) - (width / 2)
        y = (screen_height / 2) - (height / 2)
        searchSongs.geometry( '%dx%d+%d+%d' % (width, height, x, y) )
        searchSongs.configure( background='white' )
        searchSongs.tk.call( 'wm', 'iconphoto', searchSongs._w, PhotoImage( file="Musicly.png" ) )
        root.attributes( '-alpha', 0.00 )

        conn = pymysql.connect( host='localhost',
                                user=self.username,
                                password=self.password,
                                db='musicly' )
        cursor = conn.cursor()
        cur1 = conn.cursor()
        str1 = 'USE musicly; '
        cur1.execute( str1 )
        str = """SELECT distinct artist_name from artist;"""
        cursor.execute( str )
        conn.commit()
        rows = cursor.fetchall()
        list_artist = []
        for row in rows:
            list_artist.append( row[0] )
        searchSongs.wm_transient( root )
        lblsecrow = tk.Label( searchSongs, text="Artist Name -" )
        lblsecrow.place( x=50, y=50 )

        def show():
            text2 = label.config( text=menu.get() )

        menu = StringVar()
        menu.set( "Select Artist" )
        drop = OptionMenu( searchSongs, menu, *list_artist )
        drop.place( x=250, y=50 )
        button = tk.Button( searchSongs, text="Click Me", command=show )
        button.place( x=300, y=100 )
        label = tk.Label( searchSongs, text="" )
        label.place( x=150, y=100 )
        lblsecrow.place( x=50, y=50 )

        next2 = tk.Button( searchSongs, text="Show",
                           bg='light blue',
                           command=lambda: [self.searchSongArtistNameList( username, password, label ), self.submitact(),
                                            searchSongs.withdraw()] )
        next2.place( x=30, y=170, width=100 )
        exit2 = tk.Button( searchSongs, text="Exit",
                           bg='light blue', command=exit )
        exit2.place( x=180, y=170, width=100 )

        mainmenu = tk.Button( searchSongs, text="Home",
                              bg='light blue',
                              command=lambda: [self.openNewWindowReturn( username, password ), self.submitact(),
                                               searchSongs.withdraw()] )
        mainmenu.place( x=100, y=235, width=100 )



    #Search Song by Artist Name 2
    def searchSongArtistNameList(self,username,password,label):
        username = username
        password = password
        label = label.cget( "text" )
        searchSongArtistNameList = Toplevel( root )
        searchSongArtistNameList.title( "Songs List" )
        screen_width = root.winfo_screenwidth()
        screen_height = root.winfo_screenheight()
        width = 800
        height = 600
        x = (screen_width / 2) - (width / 2)
        y = (screen_height / 2) - (height / 2)
        searchSongArtistNameList.geometry( '%dx%d+%d+%d' % (width, height, x, y) )
        searchSongArtistNameList.configure( background='white' )
        searchSongArtistNameList.tk.call( 'wm', 'iconphoto', searchSongArtistNameList._w, PhotoImage( file="Musicly.png" ) )
        root.attributes( '-alpha', 0.00 )
        Label( searchSongArtistNameList, font="Calibri, 12" ).pack()
        conn = pymysql.connect( host='localhost',
                                user=self.username,
                                password=self.password,
                                db='musicly' )
        cursor = conn.cursor()
        cur1 = conn.cursor()
        str1 = 'USE musicly; '
        cur1.execute( str1 )
        str = """SELECT a.artist_name, group_concat(s.song_name) song_name
                 FROM artist a
                 LEFT JOIN song_artist sa ON a.artist_id=sa.artist_id
                 LEFT JOIN song s ON sa.song_id = s.song_id
                 WHERE a.artist_name='"""+label+"'GROUP BY a.artist_name;"
        cursor.execute( str )
        conn.commit()
        rows = cursor.fetchall()
        list_name = []
        list_songs = []
        for row in rows:
            list_name.append( row[0] )
            list_songs.append( row[1] )
        label = tk.Label( searchSongArtistNameList, text="Artist Name: " )
        label.place( x=50, y=100 )
        label = tk.Label( searchSongArtistNameList, text=list_name )
        label.place( x=200, y=100 )
        label = tk.Label( searchSongArtistNameList, text="List of Songs: " )
        label.place( x=50, y=150 )
        label = tk.Label( searchSongArtistNameList, text=list_songs )
        label.place( x=200, y=150 )
        exit2 = tk.Button( searchSongArtistNameList, text="Exit",
                           bg='light blue', command=exit )
        exit2.place( x=500, y=200, width=100 )

        mainmenu = tk.Button( searchSongArtistNameList, text="Home",
                              bg='light blue',
                              command=lambda: [self.openNewWindowReturn( username, password ), self.submitact(),
                                               searchSongArtistNameList.withdraw()] )
        mainmenu.place( x=500, y=300, width=100 )




    #Search Song By genre1
    def searchSongGenreName(self,username,password):
        username = username
        password = password
        searchSongGenreName = Toplevel( root )
        searchSongGenreName.title( "Song list" )
        Label( searchSongGenreName, font="Calibri, 12" ).pack()
        screen_width = root.winfo_screenwidth()
        screen_height = root.winfo_screenheight()
        width = 800
        height = 600
        x = (screen_width / 2) - (width / 2)
        y = (screen_height / 2) - (height / 2)
        searchSongGenreName.geometry( '%dx%d+%d+%d' % (width, height, x, y) )
        root.attributes( '-alpha', 0.00 )
        searchSongGenreName.configure( background='white' )

        conn = pymysql.connect( host='localhost',
                                user=self.username,
                                password=self.password,
                                db='musicly' )
        cursor = conn.cursor()
        cur1 = conn.cursor()
        str1 = 'USE musicly; '
        cur1.execute( str1 )
        str = """SELECT distinct genre_name from GENRE;"""
        cursor.execute( str )
        conn.commit()
        rows = cursor.fetchall()
        list_genre = []
        for row in rows:
            list_genre.append( row[0] )
        searchSongGenreName.wm_transient( root )
        searchSongGenreName.tk.call( 'wm', 'iconphoto', searchSongGenreName._w, PhotoImage( file="Musicly.png" ) )
        lblsecrow = tk.Label( searchSongGenreName, text="Genre Name -" )
        lblsecrow.place( x=50, y=50 )

        def show():
            text2 = label.config( text=menu.get() )

        menu = StringVar()
        menu.set( "Select Genre" )
        drop = OptionMenu( searchSongGenreName, menu, *list_genre )
        drop.place( x=250, y=50 )
        button = tk.Button( searchSongGenreName, text="Click Me", command=show )
        button.place( x=300, y=100 )
        label = tk.Label( searchSongGenreName, text="" )
        label.place( x=150, y=100 )
        lblsecrow.place( x=50, y=50 )

        next2 = tk.Button( searchSongGenreName, text="Show",
                           bg='light blue',
                           command=lambda: [self.searchSongGenreNameList( username, password, label ),
                                            self.submitact(),
                                            searchSongGenreName.withdraw()] )
        next2.place( x=30, y=170, width=100 )
        exit2 = tk.Button( searchSongGenreName, text="Exit",
                           bg='light blue', command=exit )
        exit2.place( x=180, y=170, width=100 )

        mainmenu = tk.Button( searchSongGenreName, text="Home",
                              bg='light blue',
                              command=lambda: [self.openNewWindowReturn( username, password ), self.submitact(),
                                               searchSongGenreName.withdraw()] )
        mainmenu.place( x=100, y=235, width=100 )



    #Search Song by Genre2
    def searchSongGenreNameList(self,username,password,label):
        username = username
        password = password
        label = label.cget( "text" )
        searchSongGenreNameList = Toplevel( root )
        searchSongGenreNameList.title( "Songs List" )
        screen_width = root.winfo_screenwidth()
        screen_height = root.winfo_screenheight()
        width = 800
        height = 600
        x = (screen_width / 2) - (width / 2)
        y = (screen_height / 2) - (height / 2)
        searchSongGenreNameList.geometry( '%dx%d+%d+%d' % (width, height, x, y) )
        searchSongGenreNameList.tk.call( 'wm', 'iconphoto', searchSongGenreNameList._w, PhotoImage( file="Musicly.png" ) )
        root.attributes( '-alpha', 0.00 )
        searchSongGenreNameList.configure( background='white' )
        Label( searchSongGenreNameList, font="Calibri, 12" ).pack()
        conn = pymysql.connect( host='localhost',
                                user= self.username,
                                password=self.password,
                                db='musicly' )
        cursor = conn.cursor()
        cur1 = conn.cursor()
        str1 = 'USE musicly; '
        cur1.execute( str1 )
        str = "call songsGenreFetch('"+label+"');"
        cursor.execute( str )
        conn.commit()
        rows = cursor.fetchall()
        list_name = []
        list_songs = []
        for row in rows:
            list_name.append( row[0] )
            list_songs.append( row[1] )
        label = tk.Label( searchSongGenreNameList, text="Genre Name: " )
        label.place( x=50, y=100 )
        label = tk.Label( searchSongGenreNameList, text=list_name )
        label.place( x=200, y=100 )
        label = tk.Label( searchSongGenreNameList, text="List of Songs: " )
        label.place( x=50, y=150 )
        label = tk.Label( searchSongGenreNameList, text=list_songs )
        label.place( x=200, y=150 )
        exit2 = tk.Button( searchSongGenreNameList, text="Exit",
                           bg='light blue', command=exit )
        exit2.place( x=500, y=200, width=100 )

        mainmenu = tk.Button( searchSongGenreNameList, text="Home",
                              bg='light blue',
                              command=lambda: [self.openNewWindowReturn( username, password ), self.submitact(),
                                               searchSongGenreNameList.withdraw()] )
        mainmenu.place( x=500, y=300, width=100 )




    #Search Song by Language1
    def searchSonglanguageName(self,username,password):
        username = username
        password = password
        searchSonglanguageName = Toplevel( root )
        searchSonglanguageName.title( "Song list" )
        Label( searchSonglanguageName, font="Calibri, 12" ).pack()
        screen_width = root.winfo_screenwidth()
        screen_height = root.winfo_screenheight()
        width = 800
        height = 600
        x = (screen_width / 2) - (width / 2)
        y = (screen_height / 2) - (height / 2)
        searchSonglanguageName.geometry( '%dx%d+%d+%d' % (width, height, x, y) )
        searchSonglanguageName.configure( background='white' )
        root.attributes( '-alpha', 0.00 )

        conn = pymysql.connect( host='localhost',
                                user=self.username,
                                password=self.password,
                                db='musicly' )
        cursor = conn.cursor()
        cur1 = conn.cursor()
        str1 = 'USE musicly; '
        cur1.execute( str1 )
        str = """SELECT distinct language_name from LANGUAGE;"""
        cursor.execute( str )
        conn.commit()
        rows = cursor.fetchall()
        list_genre = []
        for row in rows:
            list_genre.append( row[0] )
        searchSonglanguageName.wm_transient( root )
        searchSonglanguageName.tk.call( 'wm', 'iconphoto', searchSonglanguageName._w, PhotoImage( file="Musicly.png" ) )
        lblsecrow = tk.Label( searchSonglanguageName, text="Language Name -" )
        lblsecrow.place( x=50, y=50 )

        def show():
            text2 = label.config( text=menu.get() )

        menu = StringVar()
        menu.set( "Select Language" )
        drop = OptionMenu( searchSonglanguageName, menu, *list_genre )
        drop.place( x=250, y=50 )
        button = tk.Button( searchSonglanguageName, text="Click Me", command=show )
        button.place( x=300, y=100 )
        label = tk.Label( searchSonglanguageName, text="" )
        label.place( x=150, y=100 )
        lblsecrow.place( x=50, y=50 )

        next2 = tk.Button( searchSonglanguageName, text="Show",
                           bg='light blue',
                           command=lambda: [self.searchSongLanguageNameList( username, password, label ),
                                            self.submitact(),
                                            searchSonglanguageName.withdraw()] )
        next2.place( x=30, y=170, width=100 )
        exit2 = tk.Button( searchSonglanguageName, text="Exit",
                           bg='light blue', command=exit )
        exit2.place( x=180, y=170, width=100 )

        mainmenu = tk.Button( searchSonglanguageName, text="Home",
                              bg='light blue',
                              command=lambda: [self.openNewWindowReturn( username, password ), self.submitact(),
                                               searchSonglanguageName.withdraw()] )
        mainmenu.place( x=100, y=235, width=100 )



    #Search Song by Language 2
    def searchSongLanguageNameList(self,username,password,label):
        username = username
        password = password
        label = label.cget( "text" )
        searchSongLanguageNameList = Toplevel( root )
        searchSongLanguageNameList.title( "Songs List" )
        screen_width = root.winfo_screenwidth()
        screen_height = root.winfo_screenheight()
        width = 800
        height = 600
        x = (screen_width / 2) - (width / 2)
        y = (screen_height / 2) - (height / 2)
        searchSongLanguageNameList.geometry( '%dx%d+%d+%d' % (width, height, x, y) )
        searchSongLanguageNameList.tk.call( 'wm', 'iconphoto', searchSongLanguageNameList._w, PhotoImage( file="Musicly.png" ) )
        root.attributes( '-alpha', 0.00 )
        Label( searchSongLanguageNameList, font="Calibri, 12" ).pack()
        conn = pymysql.connect( host='localhost',
                                user=self.username,
                                password=self.password,
                                db='musicly' )
        cursor = conn.cursor()
        cur1 = conn.cursor()
        str1 = 'USE musicly; '
        cur1.execute( str1 )
        str = "call songsLanguageFetch('"+label+"');"
        cursor.execute( str )
        conn.commit()
        rows = cursor.fetchall()
        list_name = []
        list_songs = []
        for row in rows:
            list_name.append( row[0] )
            list_songs.append( row[1] )
        label = tk.Label( searchSongLanguageNameList, text="Language Name: " )
        label.place( x=50, y=100 )
        label = tk.Label( searchSongLanguageNameList, text=list_name )
        label.place( x=200, y=100 )
        label = tk.Label( searchSongLanguageNameList, text="List of Songs: " )
        label.place( x=50, y=150 )
        label = tk.Label( searchSongLanguageNameList, text=list_songs )
        label.place( x=200, y=150 )
        exit2 = tk.Button( searchSongLanguageNameList, text="Exit",
                           bg='light blue', command=exit )
        exit2.place( x=500, y=200, width=100 )

        mainmenu = tk.Button( searchSongLanguageNameList, text="Home",
                              bg='light blue',
                              command=lambda: [self.openNewWindowReturn( username, password ), self.submitact(),
                                               searchSongLanguageNameList.withdraw()] )
        mainmenu.place( x=500, y=300, width=100 )




    #Search Song by Mood1
    def searchSongMoodName(self,username,password):
        username = username
        password = password
        searchSongMoodName = Toplevel( root )
        searchSongMoodName.title( "Song list" )
        Label( searchSongMoodName, font="Calibri, 12" ).pack()
        screen_width = root.winfo_screenwidth()
        screen_height = root.winfo_screenheight()
        width = 800
        height = 600
        x = (screen_width / 2) - (width / 2)
        y = (screen_height / 2) - (height / 2)
        searchSongMoodName.geometry( '%dx%d+%d+%d' % (width, height, x, y) )
        root.attributes( '-alpha', 0.00 )
        searchSongMoodName.configure( background='white' )

        conn = pymysql.connect( host='localhost',
                                user=self.username,
                                password=self.password,
                                db='musicly' )
        cursor = conn.cursor()
        cur1 = conn.cursor()
        str1 = 'USE musicly; '
        cur1.execute( str1 )
        str = """SELECT distinct mood_name from MOOD;"""
        cursor.execute( str )
        conn.commit()
        rows = cursor.fetchall()
        list_genre = []
        for row in rows:
            list_genre.append( row[0] )
        searchSongMoodName.wm_transient( root )
        searchSongMoodName.tk.call( 'wm', 'iconphoto', searchSongMoodName._w, PhotoImage( file="Musicly.png" ) )
        lblsecrow = tk.Label( searchSongMoodName, text="Mood Name -" )
        lblsecrow.place( x=50, y=50 )

        def show():
            text2 = label.config( text=menu.get() )

        menu = StringVar()
        menu.set( "Select Mood" )
        drop = OptionMenu( searchSongMoodName, menu, *list_genre )
        drop.place( x=250, y=50 )
        button = tk.Button( searchSongMoodName, text="Click Me", command=show )
        button.place( x=300, y=100 )
        label = tk.Label( searchSongMoodName, text="" )
        label.place( x=150, y=100 )
        lblsecrow.place( x=50, y=50 )

        next2 = tk.Button( searchSongMoodName, text="Show",
                           bg='light blue',
                           command=lambda: [self.searchSongMoodNameList( username, password, label ),
                                            self.submitact(),
                                            searchSongMoodName.withdraw()] )
        next2.place( x=30, y=170, width=100 )
        exit2 = tk.Button( searchSongMoodName, text="Exit",
                           bg='light blue', command=exit )
        exit2.place( x=180, y=170, width=100 )

        mainmenu = tk.Button( searchSongMoodName, text="Home",
                              bg='light blue',
                              command=lambda: [self.openNewWindowReturn( username, password ), self.submitact(),
                                               searchSongMoodName.withdraw()] )
        mainmenu.place( x=100, y=235, width=100 )


    #Search Song by Mood2
    def searchSongMoodNameList(self,username,password,label):
        username = username
        password = password
        label = label.cget( "text" )
        searchSongMoodNameList = Toplevel( root )
        searchSongMoodNameList.title( "Songs List" )
        screen_width = root.winfo_screenwidth()
        screen_height = root.winfo_screenheight()
        width = 800
        height = 600
        x = (screen_width / 2) - (width / 2)
        y = (screen_height / 2) - (height / 2)
        searchSongMoodNameList.geometry( '%dx%d+%d+%d' % (width, height, x, y) )
        searchSongMoodNameList.tk.call( 'wm', 'iconphoto', searchSongMoodNameList._w, PhotoImage( file="Musicly.png" ) )
        root.attributes( '-alpha', 0.00 )
        Label( searchSongMoodNameList, font="Calibri, 12" ).pack()
        conn = pymysql.connect( host='localhost',
                                user=self.username,
                                password=self.password,
                                db='musicly' )
        cursor = conn.cursor()
        cur1 = conn.cursor()
        str1 = 'USE musicly; '
        cur1.execute( str1 )
        str = "call songsMoodFetch('"+label+"');"
        cursor.execute( str )
        conn.commit()
        rows = cursor.fetchall()
        list_name = []
        list_songs = []
        for row in rows:
            list_name.append( row[0] )
            list_songs.append( row[1] )
        label = tk.Label( searchSongMoodNameList, text="Mood Name: " )
        label.place( x=50, y=100 )
        label = tk.Label( searchSongMoodNameList, text=list_name )
        label.place( x=200, y=100 )
        label = tk.Label( searchSongMoodNameList, text="List of Songs: " )
        label.place( x=50, y=150 )
        label = tk.Label( searchSongMoodNameList, text=list_songs )
        label.place( x=200, y=150 )
        exit2 = tk.Button( searchSongMoodNameList, text="Exit",
                           bg='light blue', command=exit )
        exit2.place( x=500, y=200, width=100 )

        mainmenu = tk.Button( searchSongMoodNameList, text="Home",
                              bg='light blue',
                              command=lambda: [self.openNewWindowReturn( username, password ), self.submitact(),
                                               searchSongMoodNameList.withdraw()] )
        mainmenu.place( x=500, y=300, width=100 )



    #Fetch Song Info1
    def songInfo(self,username,password):

        username=username
        password=password
        songInfo = Toplevel( root )
        songInfo.title( "Song Info" )
        Label( songInfo, font="Calibri, 12" ).pack()
        screen_width = root.winfo_screenwidth()
        screen_height = root.winfo_screenheight()
        width = 800
        height = 600
        x = (screen_width / 2) - (width / 2)
        y = (screen_height / 2) - (height / 2)
        songInfo.geometry( '%dx%d+%d+%d' % (width, height, x, y) )
        root.attributes( '-alpha', 0.00 )
        frame1 = Frame( songInfo, highlightbackground="black", highlightthickness=2 )
        frame1.pack( padx=20, pady=20 )
        label = tk.Label( songInfo, text="          Musicly!!         ", font="Calibri, 22", background='light blue' )
        label.pack( ipadx=30, ipady=30 )

        songInfo.configure( background='white' )
        conn = pymysql.connect( host='localhost',
                                user=self.username,
                                password=self.password,
                                db='musicly' )
        cursor = conn.cursor()
        cur1 = conn.cursor()
        str1 = 'USE musicly; '
        cur1.execute( str1 )
        str = "SELECT distinct song_name from song;"
        cursor.execute( str )
        conn.commit()
        rows = cursor.fetchall()
        list_song = []
        for row in rows:
            list_song.append( row[0] )


        # Keep the toplevel window in front of the root window
        songInfo.wm_transient( root )
        songInfo.tk.call( 'wm', 'iconphoto', songInfo._w, PhotoImage( file="Musicly.png" ) )
        lblsecrow = tk.Label( songInfo, text="Song Name -" )
        lblsecrow.place(x=280,y=200,width= 100)
        def show():
            text2 = label.config( text=menu.get() )
        menu = StringVar()
        menu.set( "Select Song" )
        drop = OptionMenu( songInfo, menu, *list_song )
        drop.place( x=430, y=200 , width= 100)
        button = tk.Button( songInfo, text="click Me", command=show )
        button.place( x=280, y=300,width= 100 )
        label = tk.Label( songInfo, text="" )
        label.place( x=430, y=300 ,width= 100)

        next2 = tk.Button( songInfo, text="Next",
                           bg='light blue', command=lambda: [self.songInfoFetch(username,password,label), self.submitact(),
                                                             songInfo.withdraw()] )
        next2.place( x=200, y=400, width=150 , height=50)
        exit2 = tk.Button( songInfo, text="Exit",
                           bg='light blue', command=exit )
        exit2.place( x=400, y=400, width=150 , height=50)

        mainmenu = tk.Button( songInfo, text="Home",
                              bg='light blue', command=lambda: [self.openNewWindowReturn(username,password), self.submitact(),
                                                                songInfo.withdraw()] )
        mainmenu.place( x=320, y=500, width=150 , height=50)

    #Fetch Song Info2
    def songInfoFetch(self,username,password,label):
        username = username
        password = password
        label = label.cget( "text" )
        songInfoFetch = Toplevel( root )
        songInfoFetch.title( "Song Info" )
        screen_width = root.winfo_screenwidth()
        screen_height = root.winfo_screenheight()
        width = 800
        height = 600
        x = (screen_width / 2) - (width / 2)
        y = (screen_height / 2) - (height / 2)
        songInfoFetch.geometry( '%dx%d+%d+%d' % (width, height, x, y) )
        frame1 = Frame( songInfoFetch, highlightbackground="black", highlightthickness=2 )
        frame1.pack( padx=10, pady=10 )
        label1 = tk.Label( songInfoFetch, text="          Musicly!!         ", font="Calibri, 18", background='light blue' )
        label1.pack( ipadx=10, ipady=10 )
        songInfoFetch.tk.call( 'wm', 'iconphoto', songInfoFetch._w, PhotoImage( file="Musicly.png" ) )
        root.attributes( '-alpha', 0.00 )
        songInfoFetch.configure( background='white' )
        Label( songInfoFetch, font="Calibri, 12" ).pack()
        conn = pymysql.connect( host='localhost',
                                user=self.username,
                                password=self.password,
                                db='musicly' )
        cursor = conn.cursor()
        cur1 = conn.cursor()
        str1 = 'USE musicly; '
        cur1.execute( str1 )
        str = "call songsDetailsFetch('" +label+ "','"+username+"');"
        cursor.execute( str )
        conn.commit()
        rows = cursor.fetchall()
        list_name = []
        list_release_Date= []
        list_lyrics=[]
        list_movie_album=[]
        list_artist_name=[]
        list_lang_name=[]
        list_genre_name=[]
        list_mood_name=[]
        list_review=[]
        list_rating=[]
        for row in rows:
            list_name.append( row[0] )
            list_release_Date.append( row[1] )
            list_lyrics.append( row[2] )
            list_movie_album.append( row[3] )
            list_artist_name.append( row[4] )
            list_lang_name.append( row[5] )
            list_genre_name.append( row[6] )
            list_mood_name.append( row[7] )
            list_review.append( row[8] )
            list_rating.append( row[9] )
        label = tk.Label( songInfoFetch, text="Song Name: " )
        label.place( x=50, y=100 )
        label = tk.Label( songInfoFetch, text=list_name )
        label.place( x=200, y=100 )
        label = tk.Label( songInfoFetch, text="Song Release Date: " )
        label.place( x=50, y=150 )
        label = tk.Label( songInfoFetch, text=list_release_Date )
        label.place( x=200, y=150 )
        label = tk.Label( songInfoFetch, text="Song Lyrics: " )
        label.place( x=50, y=200 )
        label = tk.Label( songInfoFetch, text=list_lyrics )
        label.place( x=200, y=200 )
        label = tk.Label( songInfoFetch, text="Song Movie/Album: " )
        label.place( x=50, y=250 )
        label = tk.Label( songInfoFetch, text=list_movie_album )
        label.place( x=200, y=250 )
        label = tk.Label( songInfoFetch, text="Song Artist Name: " )
        label.place( x=50, y=300 )
        label = tk.Label( songInfoFetch, text=list_artist_name )
        label.place( x=200, y=300 )
        label = tk.Label( songInfoFetch, text="Song Language: " )
        label.place( x=50, y=350 )
        label = tk.Label( songInfoFetch, text=list_lang_name )
        label.place( x=200, y=350 )
        label = tk.Label( songInfoFetch, text="Song Genre: " )
        label.place( x=50, y=400 )
        label = tk.Label( songInfoFetch, text=list_genre_name )
        label.place( x=200, y=400 )
        label = tk.Label( songInfoFetch, text="Song Mood: " )
        label.place( x=50, y=450 )
        label = tk.Label( songInfoFetch, text=list_mood_name )
        label.place( x=200, y=450 )
        label = tk.Label( songInfoFetch, text="Song Review: " )
        label.place( x=50, y=500 )
        label = tk.Label( songInfoFetch, text=list_review )
        label.place( x=200, y=500 )
        label = tk.Label( songInfoFetch, text="Song Rating: " )
        label.place( x=50, y=550 )
        label = tk.Label( songInfoFetch, text=list_rating )
        label.place( x=200, y=550 )
        exit2 = tk.Button( songInfoFetch, text="Exit",
                           bg='light blue', command=exit )
        exit2.place( x=500, y=200, width=150 )

        mainmenu = tk.Button( songInfoFetch, text="Home",
                              bg='light blue',
                              command=lambda: [self.openNewWindowReturn( username, password ), self.submitact(),
                                               songInfoFetch.withdraw()] )
        mainmenu.place( x=500, y=300, width=150 )


    #Add Song rating 1
    def modifySongRating(self,username,password):
        username=username
        password=password
        modifySongRating = Toplevel( root )
        modifySongRating.title( "Modify Song Rating" )
        Label( modifySongRating, font="Calibri, 12" ).pack()
        frame1 = Frame( modifySongRating, highlightbackground="black", highlightthickness=2 )
        frame1.pack( padx=10, pady=10 )
        label1 = tk.Label( modifySongRating, text="          Musicly!!         ", font="Calibri, 22",
                           background='light blue' )
        label1.pack( ipadx=30, ipady=30 )
        screen_width = root.winfo_screenwidth()
        screen_height = root.winfo_screenheight()
        width = 800
        height = 600
        x = (screen_width / 2) - (width / 2)
        y = (screen_height / 2) - (height / 2)
        modifySongRating.geometry( '%dx%d+%d+%d' % (width, height, x, y) )
        modifySongRating.configure( background='white' )
        root.attributes( '-alpha', 0.00 )

        conn = pymysql.connect( host='localhost',
                                user=self.username,
                                password=self.password,
                                db='musicly' )
        cursor = conn.cursor()
        cur1 = conn.cursor()
        str1 = 'USE musicly; '
        cur1.execute( str1 )
        str = "SELECT distinct song_name from song;"
        cursor.execute( str )
        conn.commit()
        rows = cursor.fetchall()
        list_song = []
        for row in rows:
            list_song.append( row[0] )
        Label( modifySongRating, font="Calibri, 12" ).pack()

        # Keep the toplevel window in front of the root window
        modifySongRating.wm_transient( root )
        modifySongRating.tk.call( 'wm', 'iconphoto', modifySongRating._w, PhotoImage( file="Musicly.png" ) )

        lblsecrow = tk.Label( modifySongRating, text="Song Name -" )
        lblsecrow.place( x=250, y=200 )

        def show():
            text2 = label.config( text=menu.get() )
        menu = StringVar()
        menu.set( "Select Song" )
        drop = OptionMenu( modifySongRating, menu, *list_song )
        drop.place( x=400, y=200 )
        button = tk.Button( modifySongRating, text="click Me", command=show )
        button.place( x=250, y=300 )
        label = tk.Label( modifySongRating, text="" )
        label.place( x=400, y=300 )
        lblsecrow = tk.Label( modifySongRating, text="Rating -" )
        lblsecrow.place( x=250, y=400 )

        s_rating = tk.Entry( modifySongRating, width=35 )
        s_rating.place( x=400, y=400, width=100 )

        add = tk.Button( modifySongRating, text="Add Rating",
                         bg='light blue', command=lambda: [self.openNewWindowReturn(username,password), self.submitact(),
                                                            self.songRatingAdd(username,password,label,s_rating),
                                                           modifySongRating.withdraw()])
        add.place( x=250, y=500, width=100 )
        delete = tk.Button( modifySongRating, text="Delete Rating",
                            bg='light blue', command=lambda: [self.openNewWindowReturn(username,password), self.submitact(),
                                                            self.songRatingDelete(username, password, label, s_rating ),
                                                              modifySongRating.withdraw()] )
        delete.place( x=400, y=500, width=100 )

        exit3 = tk.Button( modifySongRating, text="Exit",
                           bg='light blue', command=exit )
        exit3.place( x=250, y=550, width=100 )

        mainmenu = tk.Button( modifySongRating, text="Home",
                              bg='light blue', command=lambda: [self.openNewWindowReturn(username,password), self.submitact(),
                                                                modifySongRating.withdraw()] )
        mainmenu.place( x=400, y=550, width=100 )


    # Add Song rating 2
    def songRatingAdd(self,username,password,label,s_rating):

        conn = pymysql.connect( host='localhost',
                                user=self.username,
                                password=self.password,
                                db='musicly' )
        cursor = conn.cursor()
        cur1 = conn.cursor()
        username = username
        password = password
        label = label.cget( "text" )
        s_rating = s_rating.get()
        str1 = 'USE musicly; '
        cur1.execute( str1 )
        str = "call userSongRating('" + username + "' , '" + label + "', " + s_rating + ");"
        cursor.execute( str )
        conn.commit()
        myresult = cursor.fetchall()

    # Delete song rating
    def songRatingDelete(self,username,password,label,s_rating):
        conn = pymysql.connect( host='localhost',
                                user=self.username,
                                password=self.password,
                                db='musicly' )
        cursor = conn.cursor()
        cur1 = conn.cursor()
        username = username
        password = password
        label = label.cget( "text" )
        s_rating = s_rating.get()
        str1 = 'USE musicly; '
        cur1.execute( str1 )
        str = "call userSongRatingDelete('"+ username +"','"+label+"');"
        cursor.execute( str )
        conn.commit()

    # Add Artist Rating 1
    def modifyArtistRating(self, username,password):
        username=username
        password=password
        modifyArtistRating = Toplevel( root )
        modifyArtistRating.title( "Modify Artist Rating" )
        modifyArtistRating.configure( background='white' )
        screen_width = root.winfo_screenwidth()
        screen_height = root.winfo_screenheight()
        width = 800
        height = 600
        x = (screen_width / 2) - (width / 2)
        y = (screen_height / 2) - (height / 2)
        modifyArtistRating.geometry( '%dx%d+%d+%d' % (width, height, x, y) )
        root.attributes( '-alpha', 0.00 )

        frame1 = Frame( modifyArtistRating, highlightbackground="black", highlightthickness=2 )
        frame1.pack( padx=10, pady=10 )
        label1 = tk.Label( modifyArtistRating, text="          Musicly!!         ", font="Calibri, 22",
                           background='light blue' )
        label1.pack( ipadx=30, ipady=30 )

        conn = pymysql.connect( host='localhost',
                                user=self.username,
                                password=self.password,
                                db='musicly' )
        cursor = conn.cursor()
        cur1 = conn.cursor()
        str1 = 'USE musicly; '
        cur1.execute( str1 )
        str = "SELECT distinct artist_name from artist;"
        cursor.execute( str )
        conn.commit()
        rows = cursor.fetchall()
        list_artist = []
        for row in rows:
            list_artist.append( row[0] )
        Label( modifyArtistRating, font="Calibri, 12" ).pack()
        x = root.winfo_x()
        y = root.winfo_y()
        modifyArtistRating.geometry( "+%d+%d" % (x, y) )

        # Keep the toplevel window in front of the root window
        modifyArtistRating.wm_transient( root )
        modifyArtistRating.tk.call( 'wm', 'iconphoto', modifyArtistRating._w, PhotoImage( file="Musicly.png" ) )

        lblsecrow = tk.Label( modifyArtistRating, text="Artist Name -" )
        lblsecrow.place( x=250, y=200 )

        def show():
            text2 = label.config( text=menu.get() )

        menu = StringVar()
        menu.set( "Select Artist" )
        drop = OptionMenu( modifyArtistRating, menu, *list_artist )
        drop.place( x=400, y=200 )

        button = tk.Button( modifyArtistRating, text="click Me", command=show )
        button.place( x=250, y=300 )
        label = tk.Label( modifyArtistRating, text="" )
        label.place( x=400, y=300 )

        # Keep the toplevel window in front of the root window
        modifyArtistRating.wm_transient( root )
        modifyArtistRating.tk.call( 'wm', 'iconphoto', modifyArtistRating._w, PhotoImage( file="Musicly.png" ) )
        lblsecrow = tk.Label( modifyArtistRating, text="Rating out of 10" )
        lblsecrow.place( x=250, y=400 )

        rating = tk.Entry( modifyArtistRating, width=35 )
        rating.place( x=400, y=400, width=100 )

        add = tk.Button( modifyArtistRating, text="Add Rating",
                         bg='light blue', command=lambda: [self.openNewWindowReturn(username,password), self.submitact(),
                                                           self.artistRatingAdd(username,password,label,rating),
                                                           modifyArtistRating.withdraw()] )
        add.place( x=250, y=500, width=100 )
        delete = tk.Button( modifyArtistRating, text="Delete Rating",
                            bg='light blue', command=lambda: [self.openNewWindowReturn(username,password), self.submitact(),
                                                           self.delArtistRating(username,password,label,rating),
                                                              modifyArtistRating.withdraw()] )
        delete.place( x=400, y=500, width=100 )

        exit3 = tk.Button( modifyArtistRating, text="Exit",
                           bg='light blue', command=exit )
        exit3.place( x=250, y=550, width=100 )

        mainmenu = tk.Button( modifyArtistRating, text="Home",
                              bg='light blue', command=lambda: [self.openNewWindowReturn(username,password), self.submitact(),
                                                                modifyArtistRating.withdraw()] )
        mainmenu.place( x=400, y=550, width=100 )


    # Add Artist Rating 2
    def artistRatingAdd(self,username,password,label,rating):

            conn = pymysql.connect( host='localhost',
                                    user=self.username,
                                    password=self.password,
                                    db='musicly' )
            cursor = conn.cursor()
            cur1 = conn.cursor()
            username = username
            password = password
            label = label.cget("text")
            rating = rating.get()
            str1 = 'USE musicly; '
            cur1.execute( str1 )
            str = "call userArtistRating('" + username + "' , '" + label + "', '" + rating + "');"
            cursor.execute( str )
            conn.commit()
            myresult = cursor.fetchall()



     # Delete Artist Rating
    def delArtistRating(self, username,password,label,rating):
        conn = pymysql.connect( host='localhost',
                                user=self.username,
                                password=self.password,
                                db='musicly' )
        cursor = conn.cursor()
        cur1 = conn.cursor()
        username = username
        password = password
        label = label.cget( "text" )
        rating = rating.get()
        str1 = 'USE musicly; '
        cur1.execute( str1 )
        str = "call userArtistRatingDelete('"+username+"','"+label+"',');"
        cursor.execute( str )
        conn.commit()


    # Add Artist Review 1
    def modifyArtistReview(self,username,password):
        username=username
        password=password
        modifyArtistReview = Toplevel( root )
        modifyArtistReview.title( "Modify Song Review" )
        screen_width = root.winfo_screenwidth()
        screen_height = root.winfo_screenheight()
        width = 800
        height = 600
        x = (screen_width / 2) - (width / 2)
        y = (screen_height / 2) - (height / 2)
        modifyArtistReview.configure( background='white' )
        frame1 = Frame( modifyArtistReview, highlightbackground="black", highlightthickness=2 )
        frame1.pack( padx=10, pady=10 )
        label1 = tk.Label( modifyArtistReview, text="          Musicly!!         ", font="Calibri, 22",
                           background='light blue' )
        label1.pack( ipadx=30, ipady=30 )
        modifyArtistReview.geometry( '%dx%d+%d+%d' % (width, height, x, y) )
        root.attributes( '-alpha', 0.00 )

        conn = pymysql.connect( host='localhost',
                                user=self.username,
                                password=self.password,
                                db='musicly' )
        cursor = conn.cursor()
        cur1 = conn.cursor()
        str1 = 'USE musicly; '
        cur1.execute( str1 )
        str = "SELECT distinct artist_name from artist;"
        cursor.execute( str )
        conn.commit()
        rows = cursor.fetchall()
        artist_name = []
        for row in rows:
            artist_name.append( row[0] )
        Label( modifyArtistReview, font="Calibri, 12" ).pack()
        x = root.winfo_x()
        y = root.winfo_y()
        modifyArtistReview.geometry( "+%d+%d" % (x, y) )

        # Keep the toplevel window in front of the root window
        modifyArtistReview.wm_transient( root )
        modifyArtistReview.tk.call( 'wm', 'iconphoto', modifyArtistReview._w, PhotoImage( file="Musicly.png" ) )

        lblsecrow = tk.Label( modifyArtistReview, text="Artist Name -" )
        lblsecrow.place( x=250, y=200 )

        def show():
            text2 = label.config( text=menu.get() )

        menu = StringVar()
        menu.set( "Select Artist" )
        drop = OptionMenu( modifyArtistReview, menu, *artist_name )
        drop.place( x=400, y=200 )

        button = tk.Button( modifyArtistReview, text="click Me", command=show )
        button.place( x=250, y=300 )
        label = tk.Label( modifyArtistReview, text="" )
        label.place( x=400, y=300 )

        Label( modifyArtistReview, font="Calibri, 12" ).pack()
        x = root.winfo_x()
        y = root.winfo_y()
        modifyArtistReview.geometry( "+%d+%d" % (x, y) )

        # Keep the toplevel window in front of the root window
        modifyArtistReview.wm_transient( root )
        modifyArtistReview.tk.call( 'wm', 'iconphoto', modifyArtistReview._w, PhotoImage( file="Musicly.png" ) )
        lblsecrow = tk.Label( modifyArtistReview, text="Review -" )
        lblsecrow.place( x=250, y=400 )

        review = tk.Entry( modifyArtistReview, width=35 )
        review.place( x=400, y=400, width=100 )

        add = tk.Button( modifyArtistReview, text="Add Review",
                         bg='light blue', command=lambda: [self.openNewWindowReturn(username,password), self.submitact(),
                                                           self.artistReviewAdd( username, password, label, review ),
                                                           modifyArtistReview.withdraw()] )
        add.place( x=250, y=500, width=100 )
        delete = tk.Button( modifyArtistReview, text="Delete Review",
                            bg='light blue', command=lambda: [self.openNewWindowReturn(username,password), self.submitact(),
                                                           self.delArtistReview( username, password, label, review ),
                                                              modifyArtistReview.withdraw()] )
        delete.place( x=400, y=500, width=100 )

        exit3 = tk.Button( modifyArtistReview, text="Exit",
                           bg='light blue', command=exit )
        exit3.place( x=250, y=550, width=100 )

        mainmenu = tk.Button( modifyArtistReview, text="Home",
                              bg='light blue', command=lambda: [self.openNewWindowReturn(username,password), self.submitact(),
                                                                modifyArtistReview.withdraw()] )
        mainmenu.place( x=400, y=550, width=100 )

    # Add Artist Review 2
    def artistReviewAdd(self,username,password,label,review):

            conn = pymysql.connect( host='localhost',
                                    user=self.username,
                                    password=self.password,
                                    db='musicly' )
            cursor = conn.cursor()
            cur1 = conn.cursor()
            username = username
            password = password
            label = label.cget("text")
            review = review.get()
            str1 = 'USE musicly; '
            cur1.execute( str1 )
            str = "call userArtistReview('" + username + "' , '" + label + "', '" + review + "');"
            cursor.execute( str )
            conn.commit()
            myresult = cursor.fetchall()

    # Delete Artist Review
    def delArtistReview(self, username,password,label,review):
        conn = pymysql.connect( host='localhost',
                                user=self.username,
                                password=self.password,
                                db='musicly' )
        cursor = conn.cursor()
        cur1 = conn.cursor()
        username = username
        password = password
        label = label.cget( "text" )
        review = review.get()
        str1 = 'USE musicly; '
        cur1.execute( str1 )
        str = "update user_artist_review set a_review = NULL where artist_id = (SELECT artist_id from artist where artist_name = '"+label+"') and user_id=(SELECT user_id from users where user_name = '"+username+"');"
        cursor.execute( str )
        conn.commit()


    # Add Song review 1
    def modifySongReview(self, username, password):
        user=username
        passw=password
        modifySongReview = Toplevel( root )
        modifySongReview.title( "Modify Song Review" )
        frame1 = Frame( modifySongReview, highlightbackground="black", highlightthickness=2 )
        frame1.pack( padx=10, pady=10 )
        label1 = tk.Label( modifySongReview, text="          Musicly!!         ", font="Calibri, 22",
                           background='light blue' )
        label1.pack( ipadx=30, ipady=30 )
        Label( modifySongReview, font="Calibri, 12" ).pack()
        screen_width = root.winfo_screenwidth()
        screen_height = root.winfo_screenheight()
        width = 800
        height = 600
        x = (screen_width / 2) - (width / 2)
        y = (screen_height / 2) - (height / 2)
        modifySongReview.geometry( '%dx%d+%d+%d' % (width, height, x, y) )
        modifySongReview.configure( background='white' )
        modifySongReview.tk.call( 'wm', 'iconphoto', modifySongReview._w, PhotoImage( file="Musicly.png" ) )
        root.attributes( '-alpha', 0.00 )
        modifySongReview.configure( background='white' )
        conn = pymysql.connect( host='localhost',
                                user=self.username,
                                password=self.password,
                                db='musicly' )
        cursor = conn.cursor()
        cur1 = conn.cursor()
        str1 = 'USE musicly; '
        cur1.execute( str1 )
        str = "SELECT distinct song_name from song;"
        cursor.execute( str )
        conn.commit()
        rows=cursor.fetchall()
        list_song = []
        for row in rows:
            list_song.append(row[0])
        Label( modifySongReview, font="Calibri, 12" ).pack()
        x = root.winfo_x()
        y = root.winfo_y()
        modifySongReview.geometry( "+%d+%d" % (x, y) )

        # Keep the toplevel window in front of the root window
        modifySongReview.wm_transient( root )
        modifySongReview.tk.call( 'wm', 'iconphoto', modifySongReview._w, PhotoImage( file="Musicly.png" ) )

        lblsecrow = tk.Label( modifySongReview, text="Song Name -" )
        lblsecrow.place( x=250, y=200 )

        def show():
            text2 = label.config( text=menu.get() )

        menu = StringVar()
        menu.set( "Select Song" )
        drop = OptionMenu( modifySongReview, menu,*list_song)
        drop.place(x=400,y=200)

        button = tk.Button( modifySongReview, text="click Me", command=show )
        button.place(x=250,y=300)
        label = tk.Label( modifySongReview, text="")
        label.place(x=400,y=300)
        lblsecrow = tk.Label( modifySongReview, text="Review -" )
        lblsecrow.place( x=250, y=400 )
        review = tk.Entry( modifySongReview, width=35 )
        review.place( x=400, y=400, width=100 )

        add = tk.Button( modifySongReview, text="Add Review",
                         bg='light blue', command=lambda: [self.openNewWindowReturn(username,password), self.submitact(),
                                                           self.songReviewAdd(user,passw,label,review),
                                                           modifySongReview.withdraw()] )
        add.place( x=250, y=500, width=100 )
        delete = tk.Button( modifySongReview, text="Delete Review",
                            bg='light blue', command=lambda: [self.openNewWindowReturn(username,password), self.submitact(),
                                                              self.delSongReview(username,password,label,review),
                                                              modifySongReview.withdraw()] )
        delete.place( x=450, y=500, width=100 )

        exit4 = tk.Button( modifySongReview, text="Exit",
                           bg='light blue', command=exit )
        exit4.place( x=250, y=550, width=100 )

        mainmenu = tk.Button( modifySongReview, text="Home",
                              bg='light blue', command=lambda: [self.openNewWindowReturn(username,password), self.submitact(),
                                                                modifySongReview.withdraw()] )
        mainmenu.place( x=450, y=550, width=100 )

    # AddSong Review 2
    def songReviewAdd(self,user,passw,label,review):

            conn = pymysql.connect( host='localhost',
                                    user=self.username,
                                    password=self.password,
                                    db='musicly' )
            cursor = conn.cursor()
            cur1 = conn.cursor()
            username = user
            password = passw
            label = label.cget("text")
            review = review.get()
            str1 = 'USE musicly; '
            cur1.execute( str1 )
            str = "call userSongReview('" + username + "' , '" + label + "', '" + review + "');"
            cursor.execute( str )
            conn.commit()
            myresult = cursor.fetchall()


    # Delete Song Review
    def delSongReview(self, username,password,label,review):
        conn = pymysql.connect( host='localhost',
                                user=self.username,
                                password=self.password,
                                db='musicly' )
        cursor = conn.cursor()
        cur1 = conn.cursor()
        username = username
        password = password
        label = label.cget( "text" )
        review = review.get()
        str1 = 'USE musicly; '
        cur1.execute( str1 )
        str = "call userSongReviewDelete('"+ username +"','" +label+"');"
        cursor.execute( str )
        conn.commit()



    # To fetch artist info1
    def artistInfo(self,username,password):
        username=username
        password=password
        artistInfo = Toplevel( root )
        artistInfo.title( "Artist Info" )
        artistInfo.configure( background='white' )
        Label( artistInfo, font="Calibri, 12" ).pack()

        screen_width = root.winfo_screenwidth()
        screen_height = root.winfo_screenheight()
        width = 800
        height = 600
        x = (screen_width / 2) - (width / 2)
        y = (screen_height / 2) - (height / 2)
        artistInfo.geometry( '%dx%d+%d+%d' % (width, height, x, y) )
        root.attributes( '-alpha', 0.00 )
        frame1 = Frame( artistInfo, highlightbackground="black", highlightthickness=2 )
        frame1.pack( padx=10, pady=10 )
        label1 = tk.Label( artistInfo, text="          Musicly!!         ", font="Calibri, 22",
                           background='light blue' )
        label1.pack( ipadx=30, ipady=30 )
        # Keep the toplevel window in front of the root window
        artistInfo.wm_transient( root )
        artistInfo.tk.call( 'wm', 'iconphoto', artistInfo._w, PhotoImage( file="Musicly.png" ) )

        conn = pymysql.connect( host='localhost',
                                user=self.username,
                                password=self.password,
                                db='musicly' )
        cursor = conn.cursor()
        cur1 = conn.cursor()
        str1 = 'USE musicly; '
        cur1.execute( str1 )
        str = "SELECT distinct artist_name from artist;"
        cursor.execute( str )
        conn.commit()
        rows = cursor.fetchall()
        list_artist = []
        for row in rows:
            list_artist.append( row[0] )

        lblsecrow = tk.Label( artistInfo, text="Artist Name -" )
        lblsecrow.place( x=280, y=200 )


        def show():
            text2 = label.config( text=menu.get() )

        menu = StringVar()
        menu.set( "Select Artist" )
        drop = OptionMenu( artistInfo, menu, *list_artist )
        drop.place( x=400, y=200 )

        button = tk.Button( artistInfo, text="click Me", command=show )
        button.place( x=280, y=300 )
        label = tk.Label( artistInfo, text="" )
        label.place( x=400, y=300 )

        Label( artistInfo, font="Calibri, 12" ).pack()

        next3 = tk.Button( artistInfo, text="Display",
                           bg='light blue', command=lambda: [self.artistInfoFetch(username,password,label), self.submitact(),
                                                             artistInfo.withdraw()] )
        next3.place( x=250, y=400, width=150,height=50 )
        exit3 = tk.Button( artistInfo, text="Exit",
                           bg='light blue', command=exit )
        exit3.place( x=430, y=400, width=150, height=50 )

        mainmenu = tk.Button( artistInfo, text="Home",
                              bg='light blue', command=lambda: [self.openNewWindowReturn(username,password), self.submitact(),
                                                                artistInfo.withdraw()] )
        mainmenu.place( x=320, y=500, width=150, height=50 )


    # To fetch Artist info 2
    def artistInfoFetch(self,username,password,label):
        username = username
        password = password
        label = label.cget( "text" )
        songInfoFetch = Toplevel( root )
        songInfoFetch.title( "Artist Info" )
        songInfoFetch.tk.call( 'wm', 'iconphoto', songInfoFetch._w, PhotoImage( file="Musicly.png" ) )
        screen_width = root.winfo_screenwidth()
        screen_height = root.winfo_screenheight()
        width = 800
        height = 600
        x = (screen_width / 2) - (width / 2)
        y = (screen_height / 2) - (height / 2)
        songInfoFetch.geometry( '%dx%d+%d+%d' % (width, height, x, y) )
        root.attributes( '-alpha', 0.00 )
        frame1 = Frame( songInfoFetch, highlightbackground="black", highlightthickness=2 )
        frame1.pack( padx=10, pady=10 )
        label1 = tk.Label( songInfoFetch, text="          Musicly!!         ", font="Calibri, 22",
                           background='light blue' )
        label1.pack( ipadx=30, ipady=30 )
        songInfoFetch.configure( background='white' )
        Label( songInfoFetch, font="Calibri, 12" ).pack()
        conn = pymysql.connect( host='localhost',
                                user=self.username,
                                password=self.password,
                                db='musicly' )
        cursor = conn.cursor()
        cur1 = conn.cursor()
        str1 = 'USE musicly; '
        cur1.execute( str1 )
        str = "call artistDetailsFetch('"+label +"','"+username+"');"
        cursor.execute( str )
        conn.commit()
        rows = cursor.fetchall()
        list_name = []
        list_Bio= []
        list_adob=[]
        list_songs=[]
        list_review=[]
        list_rating=[]
        for row in rows:
            list_name.append( row[0] )
            list_Bio.append( row[1] )
            list_adob.append( row[2] )
            list_songs.append( row[3] )
            list_review.append(row[4])
            list_rating.append(row[5])
        label = tk.Label( songInfoFetch, text="Artist Name: " )
        label.place( x=50, y=200 )
        label = tk.Label( songInfoFetch, text=list_name )
        label.place( x=200, y=200 )
        label = tk.Label( songInfoFetch, text="Artist Bio: " )
        label.place( x=50, y=250 )
        label = tk.Label( songInfoFetch, text=list_Bio )
        label.place( x=200, y=250 )
        label = tk.Label( songInfoFetch, text="Artist DOB: " )
        label.place( x=50, y=300 )
        label = tk.Label( songInfoFetch, text=list_adob )
        label.place( x=200, y=300 )
        label = tk.Label( songInfoFetch, text="Songs: " )
        label.place( x=50, y=350 )
        label = tk.Label( songInfoFetch, text=list_songs )
        label.place( x=200, y=350 )
        label = tk.Label( songInfoFetch, text="Review: " )
        label.place( x=50, y=400 )
        label = tk.Label( songInfoFetch, text=list_review )
        label.place( x=200, y=400 )
        label = tk.Label( songInfoFetch, text="Rating: " )
        label.place( x=50, y=450 )
        label = tk.Label( songInfoFetch, text=list_rating )
        label.place( x=200, y=450 )
        exit2 = tk.Button( songInfoFetch, text="Exit",
                           bg='light blue', command=exit )
        exit2.place( x=500, y=200, width=100 )

        mainmenu = tk.Button( songInfoFetch, text="Home",
                              bg='light blue',
                              command=lambda: [self.openNewWindowReturn( username, password ), self.submitact(),
                                               songInfoFetch.withdraw()] )
        mainmenu.place( x=500, y=300, width=100 )





    # Window for new user info
    def userInfo(self):
        userInfo = Toplevel( self.root )
        userInfo.title( "User Info" )

        screen_width = root.winfo_screenwidth()
        screen_height = root.winfo_screenheight()
        width = 800
        height = 600
        x = (screen_width / 2) - (width / 2)
        y = (screen_height / 2) - (height / 2)
        userInfo.geometry( '%dx%d+%d+%d' % (width, height, x, y) )
        root.attributes( '-alpha', 0.00 )
        userInfo.configure( background='white' )
        userInfo.tk.call( 'wm', 'iconphoto', userInfo._w, PhotoImage( file="Musicly.png" ) )
        frame1 = Frame( userInfo, highlightbackground="black", highlightthickness=2 )
        frame1.pack( padx=20, pady=20 )
        label = tk.Label( userInfo, text="          Musicly!!         ", font="Calibri, 22", background='light blue' )
        label.pack( ipadx=30, ipady=30 )

        Label( userInfo, font="Calibri, 12" ).pack()

        # Keep the toplevel window in front of the root window
        userInfo.wm_transient( self.root )

        lblsecrow = tk.Label( userInfo, text="Name -" )
        lblsecrow.place( x=200, y=150 )


        Username1 = tk.Entry( userInfo, width=35 )
        Username1.place( x=350, y=150, width=100 )

        lblsecrow = tk.Label( userInfo, text="Member -" )
        lblsecrow.place( x=200, y=180 )

        def show():
            text2 = label.config( text=menu.get() )

        list_song=['Yes','No']
        menu = StringVar()
        menu.set( "Select Status" )
        drop = OptionMenu( userInfo, menu,*list_song)
        drop.place(x=350,y=180)

        button = tk.Button( userInfo, text="click Me", command=show )
        button.place(x=600,y=180)

        label = tk.Label( userInfo, text="Option Selected" )
        label.place( x=500, y=180 )


        lblsecrow = tk.Label( userInfo, text="Password -" )
        lblsecrow.place( x=200, y=210 )

        password = tk.Entry( userInfo, show="*", width=35 )
        password.place( x=350, y=210, width=100 )


        lblsecrow = tk.Label( userInfo, text="DOB -" )
        lblsecrow.place( x=200, y=240 )

        dob = tk.Entry( userInfo, width=35 )
        dob.place( x=350, y=240, width=100 )


        lblsecrow = tk.Label( userInfo, text="Phone Num -" )
        lblsecrow.place( x=200, y=270 )

        phoneNum = tk.Entry( userInfo, width=35 )
        phoneNum.place( x=350, y=270, width=100 )

        lblsecrow = tk.Label( userInfo, text="Email Id -" )
        lblsecrow.place( x=200, y=300 )

        emailId = tk.Entry( userInfo, width=35 )
        emailId.place( x=350, y=300, width=100 )

        lblsecrow = tk.Label( userInfo, text="Address -" )
        lblsecrow.place( x=200, y=330 )

        address = tk.Entry( userInfo, width=35 )
        address.place( x=350, y=330, width=100 )

        lblsecrow = tk.Label( userInfo, text="City -" )
        lblsecrow.place( x=200, y=360 )

        city = tk.Entry( userInfo, width=35 )
        city.place( x=350, y=360, width=100 )



        lblsecrow = tk.Label( userInfo, text="State -" )
        lblsecrow.place( x=200, y=390 )

        state = tk.Entry( userInfo, width=35 )
        state.place( x=350, y=390, width=100 )


        lblsecrow = tk.Label( userInfo, text="Postal Code -" )
        lblsecrow.place( x=200, y=420 )

        postalCode = tk.Entry( userInfo, width=35 )
        postalCode.place( x=350, y=420, width=100 )



        submitbtn5 = tk.Button( userInfo, text="Next",
        bg='light blue', command=lambda: [self.openNewWindow(Username1, password),
                                          self.submitact() ,self.userInfoUpdate(Username1,
                                                                                label,password,dob,phoneNum,emailId,
                                                                                address,city,state,postalCode),
                                          userInfo.withdraw()])
        submitbtn5.place( x=200, y=550, width=100 )
        submitbtn6 = tk.Button( userInfo, text="Exit",
                                bg='light blue', command=exit )
        submitbtn6.place( x=350, y=550, width=100 )



    #to run update user info procedure
    def userInfoUpdate(self,Username1,label,password,dob,phoneNum,emailId,address,city,state,postalCode):
        conn = pymysql.connect( host='localhost',
                            user=self.username,
                            password=self.password,
                            db='musicly' )
        cursor = conn.cursor()
        cur1 = conn.cursor()
        username = Username1.get()
        member = label.cget("text")
        password = password.get()
        dob = dob.get()
        phoneNum = phoneNum.get()
        emailId=emailId.get()
        address= address.get()
        city= city.get()
        state= state.get()
        postalCode= postalCode.get()
        str1 = 'USE musicly; '
        cur1.execute(str1)
        str = "call userInfoUpdate('" + username + "', '" + member + "' , '" + password + "', '" + dob + "', '" + phoneNum + "','"+ emailId +"','"+address+"','"+city+"','"+state+"','"+postalCode+"');"

        cursor.execute( str )
        conn.commit()
        myresult = cursor.fetchall()


root = tk.Tk()
print( "Enter Username: " )
username = input()
print( "Enter Password: " )
password = input()

obj = Musiclly(root,username,password)
root.mainloop()


