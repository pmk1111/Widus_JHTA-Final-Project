$(document).ready(function () {
	var csrfToken = $("meta[name='_csrf']").attr("content");

	$(".issue-filter").click(function () {
		if ($(".filter-dropdown").css("display") === "none") {
			$(".filter-dropdown").fadeIn(200);
		} else {
			$(".filter-dropdown").fadeOut(200);
		}
	});

	$(".custom-selected").click(function () {
		// 클릭한 .custom-selected 요소에 대한 jQuery 객체
		var $clickedElement = $(this);

		// 다른 .custom-selected 요소를 선택
		var $otherElements = $(".custom-selected").not($clickedElement);

		// 클릭한 요소가 활성화되어 있으면
		if ($clickedElement.siblings(".custom-options").css("display") === "block") {
			$clickedElement.siblings(".custom-options").fadeToggle(300);
		} else {
			// 클릭한 요소가 활성화되어 있지 않으면
			$clickedElement.siblings(".custom-options").fadeIn(300);

			// 다른 요소들은 숨김
			$otherElements.siblings(".custom-options").fadeOut(300);
		}
	});


	$(".custom-option").click(function () {
		var value = $(this).attr("data-value");
		var text = $(this).text();
		$(this).closest(".custom-select").find(".custom-selected").text(text);
		$(this).closest(".custom-select").find("select").val(value);
		$(this).closest(".custom-options").hide();
	});

	$(".search-label").hover(function () {
		$(".search-btn-icon").css('opacity', '0.7').css('transition', '.3s');
	}); //search-label hover end

	$(".search-label").mouseleave(function () {
		$(".search-btn-icon").css('opacity', '0.4').css('transition', '.3s');
	}); //.mouseleave end

	// 필터링 ajax 호출 함수
	$(".custom-option").on("click", function () {
		const issueStatus = $("#issueStatus").text();
		const issuePriority = $("#issuePriority").text();

		console.log(issueStatus);
		console.log(issuePriority);

		const data = {
			issueStatus: issueStatus,
			issuePriority: issuePriority,
			state: "ajax"
		};
		console.log("값 변경 됨");
		getFilteredData(data);
	});

	// 필터 초기화 후 ajax 호출 함수
	$(".clear-filter").on("click", function () {
		location.reload();
	});


});

//필터링 ajax
function getFilteredData(data) {
	console.log("Ajax 요청 issueStatus: " + data.issueStatus + ", issuePriority: " + data.issuePriority);

	$.ajax({
		type: "GET",
		url: "getFilteredIssue",
		data: data,
		//        beforeSend: function (xhr) {
		//            xhr.setRequestHeader('X-CSRF-TOKEN', csrfToken);
		//        },
		success: function (data) {
			let noSearchList = '<img src="../resources/documents/img/search-null.svg" class="no-search-list">';

			$(".all-issue-list").empty();
			$('.all-issue-count').empty();
			if (data.length === 0) {
				$(".issue-area").append(noSearchList);
			} else {
				data.forEach(function (item) {
					$('.no-search-list').remove();
					var str = '<li class="list">';
					str += '<div class="issuetype-wrap">';

					if (item.type === '버그') {
						str += '<img src="../resources/issue/img/bug.svg" class="issuetype-icon">';
					} else if (item.type === '작업') {
						str += '<img src="../resources/issue/img/task.svg" class="issuetype-icon">';
					} else if (item.type === '에픽') {
						str += '<img src="../resources/issue/img/epic.svg" class="issuetype-icon">';
					}

					str += '<span class="issuetype" style="margin-left:25px !important">' + item.type + '</span>';
					str += '<a href="issue-detail?num=' + item.id + '">';
					str += '<span class="issue-title" style="margin-left:5px !important">' + item.subject + '</span></a></div>';
					str += '<div class="issuewriter-created">';
					if (item.priority == 'low') {
						str += '<span class="low">' + item.priority + '</span>'
					} else if (item.priority == 'middle') {
						str += '<span class="middle">' + item.priority + '</span>'
					} else if (item.priority == 'high') {
						str += '<span class="high">' + item.priority + '</span>'
					} else {
						str += '<span class="critical">' + item.priority + '</span>'
					}
					str += '<span class="issue-writer">' + item.create_user_name + '</span>';
					str += '<span class="issue-created" style="margin-left:25px !important">' + item.created_at.substring(2, 10) + '</span>';
					str += '</div></li>';

					$('.all-issue-list').append(str);
				});
			}

			$('.all-issue-count').append(data.length);
		},
		error: function (error) {
			console.error("Error: " + error);
		}
	});
}


//검색 AJAX
function getSearchList() {
	$.ajax({
		type: "Get",
		url: "getSearchedIssue",
		data: $("form[name=search-form]").serialize(),
		dataType: "json",
		//        beforeSend: function (xhr) {
		//            xhr.setRequestHeader('X-CSRF-TOKEN', csrfToken);
		//        },
		success: function (data) {
			$('.all-issue-list').empty();
			$('.all-issue-count').empty();
			if (data.length > 0) {
				$('.all-issue-count').append(data.length);
				data.forEach(function (item) {
					var str = '<li class="list">';
					str += '<div class="issuetype-wrap">';

					if (item.type === '버그') {
						str += '<img src="../resources/issue/img/bug.svg" class="issuetype-icon">';
					} else if (item.type === '작업') {
						str += '<img src="../resources/issue/img/task.svg" class="issuetype-icon">';
					} else if (item.type === '에픽') {
						str += '<img src="../resources/issue/img/epic.svg" class="issuetype-icon">';
					}

					str += '<span class="issuetype" style="margin-left:20px !important">' + item.type + '</span>';
					str += '<a href="issue-detail?num=' + item.id + '">';
					str += '<span class="issue-title" style="margin-left:5px !important">' + item.subject + '</span></a></div>';
					str += '<div class="issuewriter-created">';
					if (item.priority == 'low') {
						str += '<span class="low">' + item.priority + '</span>'
					} else if (item.priority == 'middle') {
						str += '<span class="middle">' + item.priority + '</span>'
					} else if (item.priority == 'high') {
						str += '<span class="high">' + item.priority + '</span>'
					} else {
						str += '<span class="critical">' + item.priority + '</span>'
					}
					str += '<span class="issue-writer">' + item.create_user_name + '</span>';
					str += '<span class="issue-created" style="margin-left:25px !important">' + item.created_at.substring(2, 10) + '</span>';
					str += '</div></li>';

					$('.all-issue-list').append(str);
				});
			} else {
				let noSearchList = '<img src="../resources/documents/img/search-null.svg" class="no-search-list">';
				$('.all-issue-list').append(noSearchList);
				$('.all-issue-count').append(data.length);
			}
		},
		error: function (error) {

		}
	});
};

//ENTER도 검색 AJAX로 처리하는 이벤트
$("#searchInput").keydown(function (event) {
	if (event.keyCode === 13 && $("#searchInput").val().trim() !== "") { //enter 키코드는 13번임
		event.preventDefault();
		getSearchList(); // 
	} else if (event.keyCode === 13 && $("#searchInput").val().trim() === "") {
		alert("검색어를 입력해 주세요.");
		event.preventDefault();
	}
});

//이슈 생성 시 선택한 프로젝트, 담당자 불러오기
function getProjectIdAndTeam() {
	$.ajax({
		type: "GET",
		url: "getProjectAndTeamInfo",
		data: {
			projectId: 1 // 추후 세션, 또는 쿠키에 저장된 프로젝트 번호를 가져와 할당
		},
		success: function (response) {
			let hostIndex = location.href.indexOf(location.host) + location.host.length;
			let contextPath = location.href.substring(hostIndex, location.href.indexOf('/', hostIndex + 1));
			if (response.length > 0) {
				console.log(response)

				$('.user-info').empty();
				$('.selected-project-color').css('background-color', response[0].projectColor)
				$('.project-name').text(response[0].projectTitle);
				response.forEach(function (item) {
					let str = '';
					str += '<div class="issue-create-custom-option mentioned-user" data-value="' + item.userId + '">'
					if (item.userPic !== null) {
						str += '<img class="assigned-user-img" src="' + contextPath + '/upload' + item.userPic + '">'
					} else {
						str += '<img class="assigned-user-img" src="' + contextPath + '/user/img/profile.png">'
					}
					str += '<span class="assigned-user-name">' + item.userName + '</span>';
					str += '<span class="assigned-user-id">#' + item.userId + '</span></div>';
					$('.user-info').append(str);
				}); // forEach end
			} else {
				console.log("가져온 프로젝트, 사용자 정보 없음");
			}
		},
		error: function (error) {
			console.error("Error: " + error);
		}
	}); //ajax end
} // getProjectIdAndTeam end