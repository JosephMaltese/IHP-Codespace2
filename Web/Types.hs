module Web.Types where

import IHP.Prelude
import IHP.ModelSupport
import Generated.Types
import IHP.LoginSupport.Types

data WebApplication = WebApplication deriving (Eq, Show)


data StaticController = WelcomeAction deriving (Eq, Show, Data)

data PostsController
    = PostsAction
    | NewPostAction
    | ShowPostAction { postId :: !(Id Post) }
    | CreatePostAction
    | EditPostAction { postId :: !(Id Post) }
    | UpdatePostAction { postId :: !(Id Post) }
    | DeletePostAction { postId :: !(Id Post) }
    | LikePostAction  { postId :: !(Id Post) }
    | DislikePostAction  { postId :: !(Id Post) }
    deriving (Eq, Show, Data)

data CommentsController
    = CommentsAction
    | NewCommentAction { postId :: !(Id Post) }
    | ShowCommentAction { commentId :: !(Id Comment) }
    | CreateCommentAction
    | EditCommentAction { commentId :: !(Id Comment) }
    | UpdateCommentAction { commentId :: !(Id Comment) }
    | DeleteCommentAction { commentId :: !(Id Comment) }
    | CreateCommentAction2 { postId :: !(Id Post) }
    deriving (Eq, Show, Data)

data SessionsController
    = NewSessionAction
    | CreateSessionAction
    | DeleteSessionAction
    deriving (Eq, Show, Data)


instance HasNewSessionUrl User where
    newSessionUrl _ = "/NewSession"

type instance CurrentUserRecord = User
data UsersController
    = UsersAction
    | NewUserAction
    | ShowUserAction { userId :: !(Id User) }
    | CreateUserAction
    | EditUserAction { userId :: !(Id User) }
    | UpdateUserAction { userId :: !(Id User) }
    | DeleteUserAction { userId :: !(Id User) }
    deriving (Eq, Show, Data)

data ReactionsController
    = ReactionsAction
    | NewReactionAction
    | ShowReactionAction { reactionId :: !(Id Reaction) }
    | CreateReactionAction { postId ::  !(Id Post) }
    | CreateReactionAction2 { commentId ::  !(Id Comment) }
    | EditReactionAction { reactionId :: !(Id Reaction) }
    | UpdateReactionAction { reactionId :: !(Id Reaction) }
    | DeleteReactionAction { reactionId :: !(Id Reaction) }
    deriving (Eq, Show, Data)
