module CheckIfPullMerged where

import qualified Github.PullRequests as Github
import Github.Auth

main :: IO ()
main = do
  let auth = GithubOAuth "authtoken"
  mergeResult  <- Github.isPullRequestMerged auth "thoughtbot" "paperclip" 575
  case mergeResult of
       (Left err)    -> putStrLn $ "Error: " ++ (show err)
       (Right stat) -> putStrLn $ (show stat)
