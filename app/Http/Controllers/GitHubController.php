<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Service\GitHubService;

class GitHubController extends Controller
{
    protected $githubService;

    // Inject the GitHubService into the controller
    public function __construct(GitHubService $githubService)
    {
        $this->githubService = $githubService;
    }

    // Method to show the user's GitHub data
    public function showUserData()
    {
        $userData = $this->githubService->getUserData();
        return response()->json($userData);  // Return the user data as JSON
    }
}

