<?php

namespace App\Service;
use App\Http\Controllers\GitHubController;
use Illuminate\Support\Facades\Http;

class GitHubService
{
    protected $baseUrl = 'https://api.github.com/';

    // Constructor to store the token from .env
    public function __construct()
    {
        $this->token = env('GITHUB_TOKEN');  // Get the token from .env
    }

    // Method to get the authenticated user's data
    public function getUserData()
    {
        $response = Http::withToken($this->token)
                        ->get("{$this->baseUrl}user");

        return $response->json();  // Return the response in JSON format
    }

    // You can add more methods for other GitHub API requests
}
