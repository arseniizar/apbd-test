using ApbdTest.Contracts.Responses;
using ApbdTest.Entities;
using ApbdTest.Infrastructure;
using ApbdTest.Infrastructure.Repositories;
using Task = ApbdTest.Entities.Task;

namespace ApbdTest.Services;

public class TeamMemberService : ITeamMemberService
{
    private readonly ITeamMemberRepository _teamMemberRepository;
    private readonly IUnitOfWork _unitOfWork;

    public TeamMemberService(ITeamMemberRepository teamMemberRepository, IUnitOfWork unitOfWork)
    {
        _teamMemberRepository = teamMemberRepository;
        _unitOfWork = unitOfWork;
    }

    public async Task<TeamMember?> GetTeamMemberByIdAsync(int teamMemberId, CancellationToken token = default)
        => await _teamMemberRepository.GetTeamMemberByIdAsync(teamMemberId, token);

    public async Task<ICollection<Task>?> GetTeamMemberTasksAsync(int teamMemberId,
        CancellationToken cancellationToken = default)
        => await _teamMemberRepository.GetTeamMemberTasksAsync(teamMemberId, cancellationToken);
}