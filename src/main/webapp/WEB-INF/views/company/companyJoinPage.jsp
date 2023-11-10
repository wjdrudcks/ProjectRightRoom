<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<jsp:include page="../include/title.jsp" />

<link
	href="<c:url value='/resources/css/company/companyJoinPage.css' />"
	rel="stylesheet" type="text/css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
</head>
<body>

	<jsp:include page="../include/header.jsp" />

	<section>

		<div id="section_wrap">

			<div class="joincontainer">
				<h3><b>업체회원 회원가입</b></h3>
					<span id="star">필수입력사항 *</span>
			</div>

			<div class="create_account_form">

				<form name="create_account_form" method="post">
					<P>
						ID<span id="star"> *</span>
					</P>
					<div class="container1">
						<input type="text" name="u_m_id"
							placeholder="영문/숫자 조합으로 8~12자리로만 가능합니다." required>
						<button class="IDConfirm" onclick="">ID중복확인</button>
					</div>
					<div class="container1">
						<div>
							<P>
								PASSWORD<span id="star"> *</span>
							</P>
							<input type="password" name="u_m_pw"
								placeholder="영문/숫자/특수문자를 사용하며, 8~12자리로만 가능합니다." required>
						</div>
						<div>
							<P>
								CONFIRM PASSWORD<span id="star"> *</span>
							</P>
							<input type="password" name="u_m_pw_again"
								placeholder="비밀번호를 다시 한번 입력해주세요." required>
						</div>
					</div>
					<ul>
						<li>비밀번호 내 ID가 포함되거나, 연속되는 문자 또는 숫자는 3자리 이상 사용할 수 없습니다.</li>
						<li>특수문자(!@#$%^&+=)중 하나를 선택하시면 됩니다.</li>
					</ul>
					<hr id="hr">
					<div class="container1">
						<div class="container2">
							<P>
								업체명<span id="star"> *</span>
							</P>
						</div>
						<input type="text" name="u_m_name" placeholder="이름을 입력해주세요."
							required>
					</div>
					<div class="container1">
						<div class="container2">
							<P>
								주소<span id="star"> *</span>
							</P>
						</div>
						<input type="text" id="address" placeholder="우편번호를 입력해주세요.">
						<button class="addressSearch" onclick="openZipcodePopup()">우편번호
							검색</button>
					</div>
					<div class="container1">
						<div class="container2">
							<P>
								연락처<span id="star"> *</span>
							</P>
						</div>
						<select class="select1" name="tel"
							onchange="showPhoneNumberInput(this)">
							<option value="010">010</option>
							<option value="011">011</option>
							<option value="012">012</option>
							<option value="016">016</option>
							<option value="02">02</option>
							<option value="userWrite">직접입력</option>
						</select>
						<div id="customPhoneInput" style="display: none;">
							<input class="shortinput3" type="text" name="custom_phone"
								placeholder="직접 입력">
						</div>
						<div class="shortinputdiv">
							<input class="shortinput1" type="text" name="u_m_phone" required>
							<span>-</span> <input class="shortinput1" type="text"
								name="u_m_phone" required>
						</div>

					</div>
					<div class="container1">
						<div class="container2">
							<P>
								이메일<span id="star"> *</span>
							</P>
						</div>
						<input class="shortinput2" type="email" name="u_m_mail"
							placeholder="이메일을 입력해주세요." required> <span>@</span>
						<div id="customEmailInput" style="display: none;">
							<input class="shortinput4" type="text" name="custom_phone"
								placeholder="직접 입력">
						</div>
						<select class="select2" name="u_m_mail"
							onchange="showEmailInput(this)">
							<option value="google">gmail.com</option>
							<option value="naver">naver.com</option>
							<option value="daum">daum.com</option>
							<option value="userWrite">직접입력</option>
						</select>
					</div>
				</form>

			</div>

		</div>

	</section>
	<div id="buttons">
		<button class="cancel-button" onclick="goBack()">취소</button>
		<button type="button" class="join-button" data-bs-toggle="modal"
			data-bs-target="#staticBackdrop">회원가입</button>
	</div>
	<jsp:include page="../include/footer.jsp" />

	<!-- 다음 우편번호 검색 API 스크립트 -->
	<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
	<script>
		// 직접입력 선택 시 입력 필드 표시/숨김 함수
		function showPhoneNumberInput(select) {
			const customPhoneInput = document
					.getElementById("customPhoneInput");
			if (select.value === "userWrite") {
				customPhoneInput.style.display = "inline-block";
			} else {
				customPhoneInput.style.display = "none";
			}
		}

		function showEmailInput(select) {
			const customEmailInput = document
					.getElementById("customEmailInput");
			if (select.value === "userWrite") {
				customEmailInput.style.display = "inline-block";
			} else {
				customEmailInput.style.display = "none";
			}
		}

		// 우편번호 검색 팝업을 띄우는 함수
		function openZipcodePopup() {
			new daum.Postcode(
					{
						oncomplete : function(data) {
							// 선택한 주소 정보를 가져와 입력 필드에 채우기
							document.getElementById("address").value = data.roadAddress;
						}
					}).open();
		}

		// 취소 버튼 누르면 브라우저의 이전 페이지로 이동
		function goBack() {
			window.history.back();
		}
	</script>

	<jsp:include page="../modal/modal_JoinSuccess.jsp" />

</body>
</html>