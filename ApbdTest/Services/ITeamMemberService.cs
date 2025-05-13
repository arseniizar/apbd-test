using ApbdTest.Contracts.Responses;
using ApbdTest.Entities;

namespace ApbdTest.Services;

public interface ITeamMemberService
{
    public Task<TeamMember?> GetTeamMemberByIdAsync(int teamMemberId, CancellationToken cancellationToken);

    public Task<ICollection<ApbdTest.Entities.Task>?> GetTeamMemberTasksAsync(int teamMemberId,
        CancellationToken cancellationToken);
}