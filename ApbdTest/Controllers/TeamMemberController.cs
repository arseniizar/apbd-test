using ApbdTest.Entities;
using ApbdTest.Services;
using Microsoft.AspNetCore.Mvc;

namespace ApbdTest.Controllers;

[ApiController]
[Route("api/teamMembers")]
public class TeamMemberController
{
    private readonly ITeamMemberService _teamMemberService;

    public TeamMemberController(ITeamMemberService teamMemberService)
    {
        _teamMemberService = teamMemberService;
    }

    // public TeamMember GetTeamMemberById (String id) {
    //     if (_teamMemberService(id))
    //     {
    //         
    //     }
    // }
}