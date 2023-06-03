<%@taglib prefix="s" uri="/struts-tags"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title> Credit Card Checkout Form UI Example</title>
        <!-- Credit Card Form CSS -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/credit-card-form.css">
    </head>
    <body>
        <jsp:include page="../HEADER/header.jsp" />
        <main>
            <!-- Credit Card From HTML -->
            <div class="wrapper" style="background-color: #f8edeb; min-height: 79vh" id="app">
                <div class="card-form">
                    <div class="card-list">
                        <div class="card-item" v-bind:class="{ '-active' : isCardFlipped }">
                            <div class="card-item__side -front">
                                <div class="card-item__focus" v-bind:class="{'-active' : focusElementStyle }" v-bind:style="focusElementStyle" ref="focusElement"></div>
                                <div class="card-item__cover">
                                    <img
                                        v-bind:src="'https://raw.githubusercontent.com/muhammederdem/credit-card-form/master/src/assets/images/' + currentCardBackground + '.jpeg'" class="card-item__bg">
                                </div>

                                <div class="card-item__wrapper">
                                    <div class="card-item__top">
                                        <img src="https://raw.githubusercontent.com/muhammederdem/credit-card-form/master/src/assets/images/chip.png" class="card-item__chip">
                                        <div class="card-item__type">
                                            <transition name="slide-fade-up">
                                                <img v-bind:src="'https://raw.githubusercontent.com/muhammederdem/credit-card-form/master/src/assets/images/' + getCardType + '.png'" v-if="getCardType" v-bind:key="getCardType" alt="" class="card-item__typeImg">
                                            </transition>
                                        </div>
                                    </div>
                                    <label for="cardNumber" class="card-item__number" ref="cardNumber">
                                        <template v-if="getCardType === 'amex'">
                                            <span v-for="(n, $index) in amexCardMask" :key="$index">
                                                <transition name="slide-fade-up">
                                                    <div
                                                        class="card-item__numberItem"
                                                        v-if="$index > 4 && $index < 14 && cardNumber.length > $index && n.trim() !== ''"
                                                        >*</div>
                                                    <div class="card-item__numberItem"
                                                         :class="{ '-active' : n.trim() === '' }"
                                                         :key="$index" v-else-if="cardNumber.length > $index">
                                                         {{cardNumber[$index]}}
                                                </div>
                                                <div
                                                    class="card-item__numberItem"
                                                    :class="{ '-active' : n.trim() === '' }"
                                                    v-else
                                                    :key="$index + 1"
                                                    >{{n}}</div>
                                            </transition>
                                        </span>
                                    </template>

                                    <template v-else>
                                        <span v-for="(n, $index) in otherCardMask" :key="$index">
                                            <transition name="slide-fade-up">
                                                <div
                                                    class="card-item__numberItem"
                                                    v-if="$index > 4 && $index < 15 && cardNumber.length > $index && n.trim() !== ''"
                                                    >*</div>
                                                <div class="card-item__numberItem"
                                                     :class="{ '-active' : n.trim() === '' }"
                                                     :key="$index" v-else-if="cardNumber.length > $index">
                                                     {{cardNumber[$index]}}
                                            </div>
                                            <div
                                                class="card-item__numberItem"
                                                :class="{ '-active' : n.trim() === '' }"
                                                v-else
                                                :key="$index + 1"
                                                >{{n}}</div>
                                        </transition>
                                    </span>
                                </template>
                            </label>
                            <div class="card-item__content">
                                <label for="cardName" class="card-item__info" ref="cardName">
                                    <div class="card-item__holder">Titular</div>
                                    <transition name="slide-fade-up">
                                        <div class="card-item__name" v-if="cardName.length" key="1">
                                            <transition-group name="slide-fade-right">
                                                <span class="card-item__nameItem" v-for="(n, $index) in cardName.replace(/\s\s+/g, ' ')" v-if="$index === $index" v-bind:key="$index + 1">{{n}}</span>
                                            </transition-group>
                                        </div>
                                        <div class="card-item__name" v-else key="2"><s:property value="%{tarjeta.titular}"></s:property></div>
                                    </transition>
                                </label>
                                <div class="card-item__date" ref="cardDate">
                                    <label for="cardMonth" class="card-item__dateTitle">Expira</label>
                                    <label for="cardMonth" class="card-item__dateItem">
                                        <transition name="slide-fade-up">
                                            <span v-if="cardMonth" v-bind:key="cardMonth">{{cardMonth}}</span>
                                            <span v-else key="2"><s:property value="%{tarjeta.mes}"></s:property></span>
                                        </transition>
                                    </label>
                                    /
                                    <label for="cardYear" class="card-item__dateItem">
                                        <transition name="slide-fade-up">
                                            <span v-if="cardYear" v-bind:key="cardYear">{{String(cardYear).slice(2,4)}}</span>
                                            <span v-else key="2"><s:property value="%{tarjeta.anio}"></s:property></span>
                                        </transition>
                                    </label>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="card-item__side -back">
                        <div class="card-item__cover">
                            <img
                                v-bind:src="'https://raw.githubusercontent.com/muhammederdem/credit-card-form/master/src/assets/images/' + currentCardBackground + '.jpeg'" class="card-item__bg">
                        </div>
                        <div class="card-item__band"></div>
                        <div class="card-item__cvv">
                            <div class="card-item__cvvTitle">CVV</div>
                            <div class="card-item__cvvBand">
                                <span v-for="(n, $index) in cardCvv" :key="$index">
                                    *
                                </span>

                            </div>
                            <div class="card-item__type">
                                <img v-bind:src="'https://raw.githubusercontent.com/muhammederdem/credit-card-form/master/src/assets/images/' + getCardType + '.png'" v-if="getCardType" class="card-item__typeImg">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
                    <s:form action="actualizarTarjeta" cssClass="card-form__inner" method="POST" theme="simple">
                    <div class="card-input">
                        <label for="cardNumber" class="card-input__label">Numero de la tarjeta</label>
                        <input name="numeroTarjeta" type="text" id="cardNumber" class="card-input__input" v-mask="generateCardNumberMask" v-model="cardNumber" v-on:focus="focusInput" v-on:blur="blurInput" data-ref="cardNumber" autocomplete="off">
                    </div>
                    <div class="card-input">
                        <label for="cardName" class="card-input__label">Titular</label>
                        <input name="titular" type="text" id="cardName" class="card-input__input" v-model="cardName" v-on:focus="focusInput" v-on:blur="blurInput" data-ref="cardName" autocomplete="off">
                    </div>
                    <div class="card-form__row">
                        <div class="card-form__col">
                            <div class="card-form__group">
                                <label for="cardMonth" class="card-input__label">Fecha de expiración</label>
                                <select name="mes" class="card-input__input -select" id="cardMonth" v-model="cardMonth" v-on:focus="focusInput" v-on:blur="blurInput" data-ref="cardDate">
                                    <option value="" disabled selected>Mes</option>
                                    <option v-bind:value="n < 10 ? '0' + n : n" v-for="n in 12" v-bind:disabled="n < minCardMonth" v-bind:key="n">
                                        {{n < 10 ? '0' + n : n}}
                                    </option>
                                </select>
                                <select name="anio" class="card-input__input -select" id="cardYear" v-model="cardYear" v-on:focus="focusInput" v-on:blur="blurInput" data-ref="cardDate">
                                    <option value="" disabled selected>Año</option>
                                    <option v-bind:value="$index + minCardYear" v-for="(n, $index) in 12" v-bind:key="n">
                                        {{$index + minCardYear}}
                                    </option>
                                </select>
                            </div>
                        </div>
                        <div class="card-form__col -cvv">
                            <div class="card-input">
                                <label for="cardCvv" class="card-input__label">CVV</label>
                                <input name="CVV" type="text" class="card-input__input" id="cardCvv" v-mask="'###'" maxlength="3" v-model="cardCvv" v-on:focus="flipCard(true)" v-on:blur="flipCard(false)" autocomplete="off">
                            </div>
                        </div>
                    </div>

                    <button class="card-form__button">
                        Enviar
                    </button>
                </s:form>
            </div>


        </div>
        <!-- END Credit Card From HTML -->
</main>

<jsp:include page="../FOOTER/footer.jsp" />
<!-- Vue JS -->  
<script src='https://cdnjs.cloudflare.com/ajax/libs/vue/2.6.10/vue.min.js'></script>
<!-- Vue Mask JS -->
<script src='https://unpkg.com/vue-the-mask@0.11.1/dist/vue-the-mask.js'></script>
<!-- Credit Card Form JS -->
<script src="${pageContext.request.contextPath}/JS/credit-card-form.js"></script>
</body>
</html>